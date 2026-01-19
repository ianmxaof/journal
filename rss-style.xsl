<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title><xsl:value-of select="/rss/channel/title"/> - RSS Feed</title>
        <style>
          * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
          }
          body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
            background: #f5f5f5;
            color: #0a0a0a;
            line-height: 1.6;
            padding: 40px 20px;
          }
          .container {
            max-width: 680px;
            margin: 0 auto;
            background: white;
            padding: 40px;
            border: 2px solid #0a0a0a;
          }
          h1 {
            font-size: 32px;
            margin-bottom: 12px;
            font-weight: 700;
          }
          .description {
            color: #666;
            margin-bottom: 8px;
            font-size: 16px;
          }
          .link {
            margin-bottom: 40px;
            padding-bottom: 24px;
            border-bottom: 2px solid #e0e0e0;
          }
          .link a {
            color: #0a0a0a;
            text-decoration: none;
            border-bottom: 1px solid #e0e0e0;
            transition: border-color 0.2s;
          }
          .link a:hover {
            border-color: #00ff88;
          }
          .item {
            margin-bottom: 40px;
            padding-bottom: 32px;
            border-bottom: 1px solid #e0e0e0;
          }
          .item:last-child {
            border-bottom: none;
          }
          .item-title {
            font-size: 20px;
            font-weight: 700;
            margin-bottom: 8px;
          }
          .item-title a {
            color: #0a0a0a;
            text-decoration: none;
          }
          .item-title a:hover {
            color: #00ff88;
          }
          .item-date {
            font-family: 'JetBrains Mono', monospace;
            font-size: 13px;
            color: #999;
            margin-bottom: 12px;
          }
          .item-description {
            color: #444;
            line-height: 1.7;
          }
          .item-description p {
            margin-bottom: 12px;
          }
          .item-description p:last-child {
            margin-bottom: 0;
          }
          .item-description strong {
            color: #0a0a0a;
          }
          .footer {
            margin-top: 40px;
            padding-top: 24px;
            border-top: 2px solid #e0e0e0;
            text-align: center;
            font-size: 14px;
            color: #999;
          }
          .footer a {
            color: #0a0a0a;
            text-decoration: none;
            border-bottom: 1px solid #e0e0e0;
          }
          .footer a:hover {
            border-color: #00ff88;
          }
        </style>
      </head>
      <body>
        <div class="container">
          <div class="link">
            <h1><xsl:value-of select="/rss/channel/title"/></h1>
            <p class="description"><xsl:value-of select="/rss/channel/description"/></p>
            <p><a href="{/rss/channel/link}"><xsl:value-of select="/rss/channel/link"/></a></p>
          </div>
          
          <xsl:for-each select="/rss/channel/item">
            <div class="item">
              <h2 class="item-title">
                <a href="{link}"><xsl:value-of select="title"/></a>
              </h2>
              <div class="item-date"><xsl:value-of select="pubDate"/></div>
              <div class="item-description">
                <xsl:value-of select="description" disable-output-escaping="yes"/>
              </div>
            </div>
          </xsl:for-each>
          
          <div class="footer">
            <p>RSS Feed for <a href="{/rss/channel/link}"><xsl:value-of select="/rss/channel/title"/></a></p>
            <p style="margin-top: 8px; font-size: 12px;">Subscribe to this feed in your RSS reader</p>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
