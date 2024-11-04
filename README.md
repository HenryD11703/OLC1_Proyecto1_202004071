# Statistical Programming Language Documentation

## Overview
This is a specialized programming language designed for statistical analysis and data visualization. It provides built-in functionality for basic arithmetic operations, statistical calculations, and various types of graphical representations of data.

## Basic Structure
Every program must be enclosed within the following structure:
```
PROGRAM
    // Your code here
END PROGRAM
```

## Data Types
The language supports two primary data types:
- `double`: For numeric values
- `char[]`: For string values

## Variables and Arrays

### Variable Declaration
Variables are declared using the following syntax:
```
var:double :: variableName <- value end;
var:char[] :: textVariable <- "String value" end;
```

### Array Declaration
Arrays are declared using the `@` symbol to identify array variables:
```
arr:double::@ArrayName <- [1, 2, 3, 4, 5] end;
```

**Note**: Multidimensional arrays are not supported in the current version.

## Operations

### Arithmetic Operations
- `SUM(a, b)`: Addition
- `RES(a, b)`: Subtraction
- `MUL(a, b)`: Multiplication
- `DIV(a, b)`: Division
- `MOD(a, b)`: Modulo

Operations can be nested:
```
var:double :: result <- MUL(SUM(7,3), RES(7, DIV(25,5))) end;
```

### Statistical Operations
The following operations can be performed on arrays or value lists:
- `media([values])`: Calculate mean
- `mediana([values])`: Calculate median
- `moda([values])`: Calculate mode
- `varianza([values])`: Calculate variance
- `max([values])`: Find maximum value
- `min([values])`: Find minimum value

## Output

### Console Output
Print to console using:
```
console::print = "Text here", variable end;
```

Display arrays in column format:
```
console::column = "Array title" -> @ArrayName end;
```

## Visualization

### Bar Graph
```
graphBar(
    titulo::char[] = "Title" end;
    ejeX::char[] = ["Label1", "Label2", "Label3"] end;
    ejeY::double = [50, 30, 70] end;
    tituloX::char[] = "X-Axis Title" end;
    tituloY::char[] = "Y-Axis Title" end;
    EXEC graphBar end;
) end;
```

### Pie Chart
```
graphPie(
    titulo::char[] = "Title" end;
    label::char[] = ["Label1", "Label2", "Label3"] end;
    values::double = [50, 30, 20] end;
    EXEC graphPie end;
) end;
```

### Line Graph
```
graphLine(
    titulo::char[] = "Title" end;
    ejeX::char[] = ["X1", "X2", "X3"] end;
    ejeY::double = [50, 30, 70] end;
    tituloX::char[] = "X-Axis Title" end;
    tituloY::char[] = "Y-Axis Title" end;
    EXEC graphLine end;
) end;
```

### Histogram
```
Histogram(
    titulo::char[] = "Title" end;
    values::double = [1, 2, 2, 3, 3, 3, 4, 4, 5] end;
    EXEC Histogram end;
) end;
```
Note: Histogram automatically generates and displays a frequency table in the console.

## User Interface
The development environment includes:
1. Navigation menu for file management and execution
2. Tab area for code editing
3. Graphics display area with navigation controls
4. Terminal/Console area for output and frequency tables

## Additional Notes
- All statements must end with a semicolon (;)
- Arrays and variables can be used interchangeably in operations
- Graphics are displayed in a separate area with navigation buttons for multiple graphs
- The console output is read-only and displays both print statements and histogram frequency tables
