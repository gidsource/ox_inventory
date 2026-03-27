import React, { useEffect, useMemo, useRef, useState } from 'react';
import { Inventory } from '../../typings';
import WeightBar from '../utils/WeightBar';
import InventorySlot from './InventorySlot';
import { getTotalWeight } from '../../helpers';
import { useAppSelector } from '../../store';
import { useIntersection } from '../../hooks/useIntersection';

// Mengambil data label item (Untuk fitur pencarian)
import { Items } from '../../store/items';

const PAGE_SIZE = 30;

const InventoryGrid: React.FC<{ inventory: Inventory }> = ({ inventory }) => {
  const weight = useMemo(
    () => (inventory.maxWeight !== undefined ? Math.floor(getTotalWeight(inventory.items) * 1000) / 1000 : 0),
    [inventory.maxWeight, inventory.items]
  );
  const [page, setPage] = useState(0);
  const containerRef = useRef(null);
  const { ref, entry } = useIntersection({ threshold: 0.5 });
  const isBusy = useAppSelector((state) => state.inventory.isBusy);

  // State untuk menangkap nilai dari Search Bar
  const [search, setSearch] = useState('');

  // Menangkap event custom dari InventoryControl
  useEffect(() => {
    const handleSearch = (e: any) => setSearch(e.detail);
    window.addEventListener('inventorySearch', handleSearch);
    return () => window.removeEventListener('inventorySearch', handleSearch);
  }, []);

  // Memfilter item yang ditampilkan berdasarkan teks
  const filteredItems = useMemo(() => {
    const searchTerm = search.toLowerCase().trim();
    if (!searchTerm) return inventory.items;

    return inventory.items.filter((item) => {
      if (!item || !item.name) return false;
      const itemName = item.name.toLowerCase();
      const itemLabel = (item.metadata?.label || Items[item.name]?.label || '').toLowerCase();
      return itemName.includes(searchTerm) || itemLabel.includes(searchTerm);
    });
  }, [inventory.items, search]);

  useEffect(() => {
    if (entry && entry.isIntersecting) {
      setPage((prev) => ++prev);
    }
  }, [entry]);

  return (
    <div className="inventory-outer-container" style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
      
      {/* 1. HOTBAR KIRI (BOX TERPISAH) - Hanya muncul di inventory Pemain */}
      {inventory.type === 'player' && (
        <div className="inventory-grid-wrapper player-hotbar-wrapper">
          <div className="player-hotbar-column">
            {filteredItems
              .filter(item => item.slot <= 5)
              .map((item) => (
                <InventorySlot
                  key={`${inventory.type}-${inventory.id}-${item.slot}`}
                  item={item}
                  inventoryType={inventory.type}
                  inventoryGroups={inventory.groups}
                  inventoryId={inventory.id}
                />
              ))}
          </div>
        </div>
      )}

      {/* 2. GRID UTAMA KANAN (BOX TERPISAH) */}
      <div className="inventory-grid-wrapper">
        <div>
          <div className="inventory-grid-header-wrapper">
            <p>{inventory.label}</p>
            {inventory.maxWeight && (
              <p>
                {weight / 1000}/{inventory.maxWeight / 1000}kg
              </p>
            )}
          </div>
          <WeightBar percent={inventory.maxWeight ? (weight / inventory.maxWeight) * 100 : 0} />
        </div>

        <div className="inventory-grid-container" ref={containerRef}>
          {inventory.type === 'player'
            ? filteredItems
                .filter(item => item.slot > 5)
                .slice(0, (page + 1) * PAGE_SIZE)
                .map((item, index) => (
                  <InventorySlot
                    key={`${inventory.type}-${inventory.id}-${item.slot}`}
                    item={item}
                    ref={index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
                    inventoryType={inventory.type}
                    inventoryGroups={inventory.groups}
                    inventoryId={inventory.id}
                  />
                ))
            : filteredItems
                .slice(0, (page + 1) * PAGE_SIZE)
                .map((item, index) => (
                  <InventorySlot
                    key={`${inventory.type}-${inventory.id}-${item.slot}`}
                    item={item}
                    ref={index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
                    inventoryType={inventory.type}
                    inventoryGroups={inventory.groups}
                    inventoryId={inventory.id}
                  />
                ))}
        </div>
      </div>

    </div>
  );
};

export default InventoryGrid;