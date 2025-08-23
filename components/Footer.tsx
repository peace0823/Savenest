"use client";

import { useState } from "react";
import Image from "next/image";
import Link from "next/link";

export default function Footer() {
  const [email, setEmail] = useState("");

  function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    console.log("Get Started:", email);
    setEmail("");
  }

  return (
    <footer className="pt-20 bg-white">
      {/* Decorative Section */}
      <section className="relative bg-[#1f299c1c]">
        <div className="h-40 sm:h-48 md:h-56" />
        <svg
          className="pointer-events-none absolute bottom-0 left-0 h-16 sm:h-20 md:h-24 w-full"
          viewBox="0 0 1440 120"
          preserveAspectRatio="none"
          aria-hidden="true"
        >
          <path
            d="M0,0 C360,120 1080,120 1440,0 L1440,120 L0,120 Z"
            fill="#ffffff"
          />
        </svg>
      </section>

      {/* CTA Card */}
      <div className="flex justify-center px-4 relative -top-16 sm:-top-20">
        <div className="w-full max-w-5xl bg-[#1F299C] rounded-xl p-6 sm:p-8 md:p-12 lg:p-20 shadow-2xl">
          <div className="flex flex-col sm:flex-row items-center gap-4">
            <h3 className="text-white text-base sm:text-lg md:text-xl font-semibold text-center sm:text-left min-w-[180px]">
              Start My Nest
            </h3>
            <form
              onSubmit={handleSubmit}
              className="flex flex-col sm:flex-row w-full gap-3"
            >
              <label htmlFor="footer-email" className="sr-only">
                Email
              </label>
              <input
                id="footer-email"
                type="email"
                required
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                placeholder="Enter your email"
                className="flex-1 rounded-md px-4 py-2 text-sm outline-none bg-white"
              />
              <button
                type="submit"
                className="bg-white text-[#0f172a] px-4 py-2 rounded-md font-semibold text-sm hover:opacity-95"
              >
                Get Started
              </button>
            </form>
          </div>
        </div>
      </div>

      {/* Footer Links & Social */}
      <div className="border-t border-gray-100">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 py-8">
          <div className="flex flex-col sm:flex-row items-center justify-between gap-6 text-center sm:text-left">
            <nav className="flex flex-wrap justify-center sm:justify-start gap-4 text-sm text-slate-600">
              <a href="#" className="hover:underline">About us</a>
              <a href="#" className="hover:underline">Discover</a>
              <a href="#" className="hover:underline">Explore</a>
              <a href="#" className="hover:underline">Books</a>
            </nav>
            <div className="flex justify-center sm:justify-end gap-6">
              {/* Social Icons */}
              {/* ... existing SVGs unchanged ... */}
            </div>
          </div>

          {/* Logo */}
          <div className="mt-8 flex items-center justify-center">
            <Link href="/" className="flex items-center space-x-2">
              <Image
                src="https://d3rbtxuppkc4i4.cloudfront.net/images/Logo-blue2.png"
                alt="Logo"
                height={48}
                width={48}
              />
            </Link>
          </div>

          {/* Legal Section */}
          <div className="mt-6 flex flex-col sm:flex-row items-center justify-between gap-4 text-xs text-slate-500 text-center sm:text-left">
            <div>© {new Date().getFullYear()} Savenest. All rights reserved.</div>
            <div className="flex gap-4">
              <a href="#" className="hover:underline">Terms of Service</a>
              <a href="#" className="hover:underline">Privacy Policy</a>
            </div>
          </div>
        </div>
      </div>
    </footer>
  );
}
