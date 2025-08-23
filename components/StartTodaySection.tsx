"use client";

import Image from "next/image";
import { RocketIcon } from "lucide-react";

export default function StartTodaySection() {
  return (
    <section className="pt-20 w-full flex justify-center items-center px-4 py-12">
      <div className="bg-[rgba(31,41,156,0.18)] overflow-hidden w-full max-w-7xl rounded-3xl p-8 lg:p-16 flex flex-col items-center gap-8">
        
        {/* Icon */}
        <div className="mb-4 text-center flex justify-center items-center">
          <RocketIcon className="w-[120px] h-[120px] text-[#1F299C]" />
        </div>

        {/* Headline */}
        <h1 className="text-4xl md:text-5xl font-bold text-black font-poppins leading-tight text-center">
          Everything You Need to Save Smart
        </h1>

        {/* Sub-headline */}
        <p className="mt-6 text-lg md:text-xl text-[#0466C8] font-grotesk text-center max-w-2xl">
          Ready to kickstart your savings journey with Nesty?
        </p>

        {/* CTA Button */}
        <div className="flex justify-center items-center">
          <button className="mt-8 bg-[#FBBF24] hover:bg-[#f59e0b] transition-colors text-black py-3 px-6 font-grotesk font-bold rounded-lg shadow-md">
            Start Your Nest Today
          </button>
        </div>

      </div>
    </section>
  );
}
