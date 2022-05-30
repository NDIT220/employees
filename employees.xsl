<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="employees.css"/>
      </head>
      <body>
        <h2>Employees</h2>
        <table>
          <tr>
            <th>Employee Number</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Address</th>
            <th>Email</th>
          </tr>
          <xsl:for-each select="employees/record">
          <tr>
            <td><xsl:value-of select="employeeNumber"/></td>
            <td><xsl:value-of select="firstName"/></td>
            <td><xsl:value-of select="lastName"/></td>
            <td><xsl:value-of select="address"/></td>
            <td><xsl:value-of select="email"/></td>
          </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
