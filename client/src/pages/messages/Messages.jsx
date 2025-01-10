import React, { useState } from "react";
import { Link } from "react-router-dom";
import { BiSearch } from "react-icons/bi";
import { IoChevronDown } from "react-icons/io5";
import { useQuery } from "@tanstack/react-query";
import request from "../../utils/request.utils";
import "./Messages.scss";
import SjmBot from "../../components/SjmBot/SjmBot";

const Messages = () => {
  const [isDropdownOpen, setIsDropdownOpen] = useState(false);
  const [selectedFilter, setSelectedFilter] = useState("All messages");
  const [search, setSearch] = useState("");

  const filterOptions = [
    { id: 'all', label: 'All messages' },
    { id: 'unread', label: 'Unread' },
    { id: 'starred', label: 'Starred' },
    { id: 'custom-offers', label: 'Custom Offers' },
    null, // divider
    { id: 'archived', label: 'Archived' },
    { id: 'spam', label: 'Spam' },
    null, // divider
    { id: 'new-inquiry', label: 'New Inquiry' },
    { id: 'order-in-progress', label: 'Order In progress' },
    { id: 'checking-in', label: 'Checking In' },
    { id: 'revisions', label: 'Revisions' }
  ];

  return (
    <div className="messages-page">
      <SjmBot />
      <div className="messages-wrapper">
        <div className="messages-header">
          <div className="filter-section">
            <button 
              className="filter-button"
              onClick={() => setIsDropdownOpen(!isDropdownOpen)}
            >
              {selectedFilter}
              <IoChevronDown className={`chevron ${isDropdownOpen ? 'open' : ''}`} />
            </button>
            
            {isDropdownOpen && (
              <div className="dropdown-menu">
                {filterOptions.map((option, index) => 
                  option === null ? (
                    <div key={`divider-${index}`} className="dropdown-divider" />
                  ) : (
                    <button
                      key={option.id}
                      className={`dropdown-item ${selectedFilter === option.label ? 'active' : ''}`}
                      onClick={() => {
                        setSelectedFilter(option.label);
                        setIsDropdownOpen(false);
                      }}
                    >
                      {option.label}
                    </button>
                  )
                )}
              </div>
            )}
          </div>
          
          <button className="search-button">
            <BiSearch />
          </button>
        </div>

        <div className="empty-conversation">
          <div className="icon-wrapper">
            <svg viewBox="0 0 24 24" fill="none">
              <path d="M20 2H4c-1.1 0-2 .9-2 2v18l4-4h14c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2zm0 14H6l-2 2V4h16v12z" fill="currentColor"/>
            </svg>
          </div>
          <h3>No Conversations</h3>
          <p>There are no conversations under<br/>"All messages"</p>
          <Link to="/" className="view-all">View All</Link>
        </div>
      </div>
      
      <div className="main-content">
        <div className="empty-inbox">
          <div className="mailbox-illustration">
            <svg viewBox="0 0 216 120" className="empty-state-icon">
              <path d="M108 120c40.87 0 74-33.13 74-74s-33.13-74-74-74S34 5.13 34 46s33.13 74 74 74z" fill="#f5f5f5"/>
              <path d="M164.5 20h-113c-6.6 0-12 5.4-12 12v76c0 6.6 5.4 12 12 12h113c6.6 0 12-5.4 12-12V32c0-6.6-5.4-12-12-12z" fill="#fff"/>
              <path d="M164.5 20h-113c-6.6 0-12 5.4-12 12v76c0 6.6 5.4 12 12 12h113c6.6 0 12-5.4 12-12V32c0-6.6-5.4-12-12-12zm0 88h-113V32h113v76z" fill="#e4e5e7"/>
              <path d="M108 67.5c-2.2 0-4-1.8-4-4s1.8-4 4-4 4 1.8 4 4-1.8 4-4 4z" fill="#1dbf73"/>
            </svg>
          </div>
          <h2>Ah, a fresh new inbox</h2>
          <p>You haven&apos;t started any conversations yet,<br />but when you do, you&apos;ll find them here.</p>
        </div>
      </div>
    </div>
  );
};

export default Messages;