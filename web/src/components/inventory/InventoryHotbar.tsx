import React, { useState } from 'react';
import { getItemUrl, isSlotWithItem } from '../../helpers';
import useNuiEvent from '../../hooks/useNuiEvent';
import { Items } from '../../store/items';
import WeightBar from '../utils/WeightBar';
import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';
import { SlotWithItem } from '../../typings';
import SlideUp from '../utils/transitions/SlideUp';

const InventoryHotbar: React.FC = () => {
  const [hotbarVisible, setHotbarVisible] = useState(false);
  const items = useAppSelector(selectLeftInventory).items.slice(0, 5);

  // FIX: Mengganti NodeJS.Timeout dengan ReturnType<typeof setTimeout>
  const [handle, setHandle] = useState<ReturnType<typeof setTimeout>>();
  
  useNuiEvent('toggleHotbar', () => {
    if (hotbarVisible) {
      setHotbarVisible(false);
    } else {
      if (handle) clearTimeout(handle);
      setHotbarVisible(true);
      setHandle(setTimeout(() => setHotbarVisible(false), 3000));
    }
  });

  return (
    <SlideUp in={hotbarVisible}>
      <div className="hotbar-container">
        {items.map((item) => (
          <div className="hotbar-item-slot" key={`hotbar-${item.slot}`}>
            
            {/* LAPISAN 1: ANGKA SLOT SELALU MUNCUL DI BELAKANG */}
            <div className="inventory-slot-number">{item.slot}</div>

            {isSlotWithItem(item) && (
              <>
                {/* LAPISAN 2: GAMBAR BARANG (DENGAN FORMAT URL YANG SUDAH DIPERBAIKI AGAR TIDAK FLICKER) */}
                <div 
                  className="item-slot-image" 
                  style={{ backgroundImage: `url(${getItemUrl(item as SlotWithItem) || 'none'})` }}
                />

                {/* LAPISAN 3: INFORMASI TEKS */}
                <div className="item-slot-wrapper">
                  <div className="item-hotslot-header-wrapper">
                    <div className="item-slot-info-wrapper">
                      {item.weight > 0 && (
                        <p>
                          {item.weight >= 1000
                            ? `${(item.weight / 1000).toLocaleString('en-us', {
                                minimumFractionDigits: 2,
                              })}kg `
                            : `${item.weight.toLocaleString('en-us', {
                                minimumFractionDigits: 0,
                              })}g `}
                        </p>
                      )}
                      {item.count > 0 && <p>{item.count.toLocaleString('en-us')}x</p>}
                    </div>
                  </div>
                  
                  <div>
                    {item?.durability !== undefined && <WeightBar percent={item.durability} durability />}
                    <div className="inventory-slot-label-box">
                      <div className="inventory-slot-label-text">
                        {item.metadata?.label ? item.metadata.label : Items[item.name]?.label || item.name}
                      </div>
                    </div>
                  </div>
                </div>
              </>
            )}
          </div>
        ))}
      </div>
    </SlideUp>
  );
};

export default InventoryHotbar;