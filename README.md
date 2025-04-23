# Verilog estrutural, instanciando e conectando módulos novamente

Implemente um multiplexador de 4x1 a partir da combinação de várias instâncias do módulo fornecido:

```verilog
module mux2byte (
    input [7:0] a, b, 
    input sel, 
    output [7:0] out);
    assign out = sel ? b : a;
endmodule
```

- Note que cada porta recebe um byte e não um único fio;
- Por isso, é necessário declarar os fios intermediários; 
- Instancie e ligue os muxes que julgar necessários;

# Referências

- https://hdlbits.01xz.net/wiki/Bugs_mux4
