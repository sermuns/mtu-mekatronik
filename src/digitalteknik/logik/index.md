# Logik

I detta delmoment av digitaltekniken lär vi oss att jobba med binära signaler på ett strukturerat sätt, med grindar, booleska uttryck och sanningstabeller.


## TLDR / sammanfattning

Här kommer tabell över grindarna, och dess representation som symboler och i sanningstabeller.

<table>
  <thead>
    <tr>
      <th>Grindnamn</th>
      <th>Grindnät</th>
      <th>Booleskt uttryck</th>
      <th>Sanningstabell</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>AND</td>
      <td><img src="/media/and.svg" alt="AND-grind" /></td>
      <td>$y = ab$</td>
      <td>
        <table>
          <thead>
            <tr>
              <th>a</th>
              <th>b</th>
              <th>y</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>0</td>
              <td>0</td>
              <td>0</td>
            </tr>
            <tr>
              <td>0</td>
              <td>1</td>
              <td>0</td>
            </tr>
            <tr>
              <td>1</td>
              <td>0</td>
              <td>0</td>
            </tr>
            <tr>
              <td>1</td>
              <td>1</td>
              <td>1</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
    <tr>
      <td>OR</td>
      <td><img src="/media/or.svg" alt="OR-grind" /></td>
      <td>$y = a + b$</td>
      <td>
        <table>
          <thead>
            <tr>
              <th>a</th>
              <th>b</th>
              <th>y</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>0</td>
              <td>0</td>
              <td>0</td>
            </tr>
            <tr>
              <td>0</td>
              <td>1</td>
              <td>1</td>
            </tr>
            <tr>
              <td>1</td>
              <td>0</td>
              <td>1</td>
            </tr>
            <tr>
              <td>1</td>
              <td>1</td>
              <td>1</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
    <tr>
      <td>NOT</td>
      <td><img src="/media/not.svg" alt="NOT-grind" /></td>
      <td>$y = a^{\prime}$</td>
      <td>
        <table>
          <thead>
            <tr>
              <th>a</th>
              <th>y</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>0</td>
              <td>1</td>
            </tr>
            <tr>
              <td>1</td>
              <td>0</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
    <tr>
      <td>XOR</td>
      <td><img src="/media/xor.svg" alt="XOR-grind" /></td>
      <td>$y = a \oplus b$</td>
      <td>
        <table>
          <thead>
            <tr>
              <th>a</th>
              <th>b</th>
              <th>y</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>0</td>
              <td>0</td>
              <td>0</td>
            </tr>
            <tr>
              <td>0</td>
              <td>1</td>
              <td>1</td>
            </tr>
            <tr>
              <td>1</td>
              <td>0</td>
              <td>1</td>
            </tr>
            <tr>
              <td>1</td>
              <td>1</td>
              <td>0</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
  </tbody>
</table>