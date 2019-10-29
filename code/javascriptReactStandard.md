# JavaScript/ReactJS Standard
## TL;DR
**File Names:** `fileName.js`

**Class Names:** `ClassName`

**Method/Function Names:** `methodName`

**Local Variables:** `localVariable`

**Constant Variables:** `CONSTANT_VARIABLE`

**General File Layout:**
```
// Imports

// Class

// Props

// Export
```

## Naming
### File Names
**Example:** `fileName.js`

File names should use camelCase with the `.js` extension. The file name should be the same as the contents if its possible. For example, a ReactJS Component called `Button` would go in `button.js`.

### Class Names
**Example:** `ClassName`

Class names should use PascalCase.

### Method/Function Names
**Example:** `methodName`

Method/Function names should use camelCase.

### Local Variable Names
**Example:** `localVariable`

Local Variable names should use camelCase.

### Constant Variable Names
**Example:** `CONSTANT_VARIABLE`

Constant Variable names should use all caps SNAKE_CASE.

## File Structure
### General Layout
**Example:**
```
// Imports

// Class

// Props

// Export
```

### Import Layout
**Example:**
```
// 3rd Party imports
import package from 'third-party-pkg'

// Owned imports (packages)
import package from 'internal-pkg'

// Owned imports (files from within the project)
import Component from '../someOtherFile.js'

// Style sheet imports
import 'someCssFile.css'
```
Keeping the imports separated will help keep them clean and consistant across files/projects. The separation makes it easy to quickly decipher where a package can be found or if it is owned internally.

### Import Sorting
**Example:**
```
import SomePackage from 'some-pkg'
import TestPackage from 'test-pkg'

import Component1 from '../someOtherFolder/component1.js'
import Component2 from './component2.js'
import HelloWorld from './helloWorld.js'
```
Imports should be sorted by alphabetical order. If applicable, the imports should be first sorted by how far away from the current file they are first and then sorted alphabetically. As you can see, importing Component1 from another folder is placed before the imports for Component2 and HelloWorld in the same folder.

### Class Layout
**Example:**
```
class SomeClass extends React.Component {
	// Static methods
	
	// Constructor
	
	// Component Life Cycle Methods
	
	// Methods
	
	// Render method
}
```
React component classes should be laid out in this standard way to make finding methods easy. The render method is always at the bottom because it will most likely be calling some or all of the other methods in the class and is the most common place a developer will look.

### Props Layout
**Example:**
```
// Map state to props function (if using Redux)
	// Match prop types order for consistancy

// Prop Types
	// Redux action methods
	// State props in alphabetical order

// Default Props
```
Props layout is just for consistancy across files. This makes it easier to find what you are looking for and where to add in new props.

### Export
**Example:**
```
export default withRouter(connect(
    mapStateToProps,
    {
        doSomeAction
    }
)(SomeComponent));
```
Include the Redux middleware methods in the export. This aliveiates the need for another function like map state to props and avoids an error that I ran into at some point using a mapDispatchToProps or similar function in the past. Always use the default export for components.
