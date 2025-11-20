"use client";

import React, { useEffect, useRef } from "react";
import L from "leaflet";
import { MapContainer, TileLayer, Marker, Popup, useMap } from "react-leaflet";
import { Place } from "@/types";
import {
  calculateSafetyMetrics,
  getSafetyColor,
} from "@/utils/safetyCalculations";
import "leaflet/dist/leaflet.css";

interface InteractiveMapProps {
  places: Place[];
  selectedPlace: Place | null;
  onPlaceSelect: (place: Place) => void;
  center?: [number, number];
  zoom?: number;
}

// Custom marker icons based on safety level with pastel glow
const createCustomIcon = (color: string, safetyTier: string) => {
  const glowColor = 
    safetyTier === "Safe" ? "134, 239, 172" : // pastel-mint
    safetyTier === "Moderate" ? "253, 230, 138" : // pastel-yellow
    "251, 207, 232"; // pastel-pink

  return L.divIcon({
    className: "custom-marker",
    html: `
      <div style="
        background: linear-gradient(135deg, ${color} 0%, ${color}dd 100%);
        width: 40px;
        height: 40px;
        border-radius: 50%;
        border: 3px solid rgba(${glowColor}, 0.4);
        box-shadow: 0 0 20px rgba(${glowColor}, 0.4), 0 4px 12px rgba(0,0,0,0.5);
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        position: relative;
      ">
        <div style="
          width: 14px;
          height: 14px;
          background-color: rgba(255, 255, 255, 0.9);
          border-radius: 50%;
          box-shadow: 0 0 8px rgba(${glowColor}, 0.6);
        "></div>
        <div style="
          position: absolute;
          width: 100%;
          height: 100%;
          border-radius: 50%;
          border: 2px solid rgba(${glowColor}, 0.6);
          animation: pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite;
        "></div>
      </div>
    `,
    iconSize: [40, 40],
    iconAnchor: [20, 20],
  });
};

// Component to handle map updates
function MapUpdater({
  center,
  zoom,
}: {
  center: [number, number];
  zoom: number;
}) {
  const map = useMap();

  useEffect(() => {
    map.setView(center, zoom);
  }, [center, zoom, map]);

  return null;
}

export default function InteractiveMap({
  places,
  selectedPlace,
  onPlaceSelect,
  center = [13.0827, 80.2707], // Chennai coordinates
  zoom = 12,
}: InteractiveMapProps) {
  const mapRef = useRef<L.Map | null>(null);

  return (
    <div className="w-full h-full relative z-0">
      <MapContainer
        center={center}
        zoom={zoom}
        className="w-full h-full rounded-none sm:rounded-3xl shadow-2xl z-0"
        zoomControl={true}
        ref={mapRef}>
        {/* Dark theme tile layer */}
        <TileLayer
          attribution='&copy; <a href="https://carto.com/">CARTO</a>'
          url="https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}{r}.png"
        />

        <MapUpdater center={center} zoom={zoom} />

        {places.map((place) => {
          const metrics = calculateSafetyMetrics(place);
          const color = getSafetyColor(metrics.safetyTier);
          const icon = createCustomIcon(color, metrics.safetyTier);

          return (
            <Marker
              key={place.id}
              position={[place.lat, place.lng]}
              icon={icon}
              eventHandlers={{
                click: () => onPlaceSelect(place),
              }}>
              <Popup>
                <div className="p-3 bg-dark-800 rounded-2xl border border-white/10">
                  <h3 className="font-bold text-white mb-2">
                    {place.name}
                  </h3>
                  <div className="flex items-center space-x-2">
                    <span
                      className="px-3 py-1 rounded-full text-xs font-semibold border"
                      style={{
                        backgroundColor: `${color}20`,
                        color: color,
                        borderColor: `${color}40`,
                      }}>
                      {metrics.safetyTier}
                    </span>
                    <span className="text-sm text-zinc-300 font-medium">
                      Score: {metrics.finalSafetyScore}
                    </span>
                  </div>
                </div>
              </Popup>
            </Marker>
          );
        })}
      </MapContainer>

      {/* Custom CSS for marker effects and dark theme */}
      <style jsx global>{`
        @keyframes pulse {
          0%, 100% {
            opacity: 1;
            transform: scale(1);
          }
          50% {
            opacity: 0.5;
            transform: scale(1.1);
          }
        }
        
        .custom-marker:hover > div {
          transform: scale(1.15);
          filter: brightness(1.2);
        }
        
        .leaflet-container {
          font-family: "Plus Jakarta Sans", "Inter", sans-serif;
          z-index: 0 !important;
          background: #121212 !important;
        }
        
        .leaflet-pane {
          z-index: auto !important;
        }
        
        .leaflet-top,
        .leaflet-bottom {
          z-index: 400 !important;
        }
        
        .leaflet-control {
          z-index: 500 !important;
        }
        
        /* Dark theme zoom controls */
        .leaflet-control-zoom a {
          background: rgba(28, 28, 30, 0.9) !important;
          backdrop-filter: blur(12px);
          border: 1px solid rgba(255, 255, 255, 0.1) !important;
          color: white !important;
          border-radius: 12px !important;
          width: 36px !important;
          height: 36px !important;
          line-height: 36px !important;
          transition: all 0.2s !important;
        }
        
        .leaflet-control-zoom a:hover {
          background: rgba(28, 28, 30, 1) !important;
          border-color: rgba(165, 243, 252, 0.3) !important;
        }
        
        .leaflet-control-zoom {
          border: none !important;
          box-shadow: 0 4px 12px rgba(0, 0, 0, 0.5) !important;
          border-radius: 16px !important;
          overflow: hidden;
        }
        
        /* Dark theme popup */
        .leaflet-popup-content-wrapper {
          background: transparent !important;
          box-shadow: none !important;
          border-radius: 16px !important;
          padding: 0 !important;
        }
        
        .leaflet-popup-content {
          margin: 0 !important;
        }
        
        .leaflet-popup-tip {
          background: #1c1c1e !important;
          border: 1px solid rgba(255, 255, 255, 0.1) !important;
        }
        
        .leaflet-popup {
          z-index: 600 !important;
        }
        
        .leaflet-marker-pane {
          z-index: 300 !important;
        }
        
        /* Attribution styling */
        .leaflet-control-attribution {
          background: rgba(28, 28, 30, 0.8) !important;
          backdrop-filter: blur(8px);
          border: 1px solid rgba(255, 255, 255, 0.05) !important;
          color: rgba(255, 255, 255, 0.6) !important;
          border-radius: 8px !important;
          padding: 4px 8px !important;
        }
        
        .leaflet-control-attribution a {
          color: rgba(165, 243, 252, 0.8) !important;
        }
      `}</style>
    </div>
  );
}
