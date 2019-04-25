import XCTest
import class Foundation.NSBundle
@testable import RomanNumeralsCore


final class RomanNumeralsTransformatorTests: XCTestCase {

    func testTransformEmptyNumeral_ShouldReturn0() throws {
        let sut = RomanNumeralsTransformator()
        let roman = ""
        
        let actual = try sut.transform(roman)
        
        let expected = 0
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformI_ShouldReturn1() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "I"
        
        let actual = try sut.transform(roman)
        
        let expected = 1
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformII_ShouldReturn2() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "II"
        
        let actual = try sut.transform(roman)
        
        let expected = 2
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformIII_ShouldReturn3() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "III"
        
        let actual = try sut.transform(roman)
        
        let expected = 3
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformIV_ShouldReturn4() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "IV"
        
        let actual = try sut.transform(roman)
        
        let expected = 4
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformV_ShouldReturn5() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "V"
        
        let actual = try sut.transform(roman)
        
        let expected = 5
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformVI_ShouldReturn6() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "VI"
        
        let actual = try sut.transform(roman)
        
        let expected = 6
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformVII_ShouldReturn7() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "VII"
        
        let actual = try sut.transform(roman)
        
        let expected = 7
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformVIII_ShouldReturn8() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "VIII"
        
        let actual = try sut.transform(roman)
        
        let expected = 8
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformIX_ShouldReturn9() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "IX"
        
        let actual = try sut.transform(roman)
        
        let expected = 9
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformX_ShouldReturn10() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "X"
        
        let actual = try sut.transform(roman)
        
        let expected = 10
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformXI_ShouldReturn11() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XI"
        
        let actual = try sut.transform(roman)
        
        let expected = 11
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformXII_ShouldReturn12() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XII"
        
        let actual = try sut.transform(roman)
        
        let expected = 12
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformXIII_ShouldReturn13() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XIII"
        
        let actual = try sut.transform(roman)
        
        let expected = 13
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformXIV_ShouldReturn14() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XIV"
        
        let actual = try sut.transform(roman)
        
        let expected = 14
        XCTAssertEqual(actual, expected)
    }
        
    func testTransformXVII_ShouldReturn17() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XVII"
        
        let actual = try sut.transform(roman)
        
        let expected = 17
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformXIX_ShouldReturn19() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XIX"
        
        let actual = try sut.transform(roman)
        
        let expected = 19
        XCTAssertEqual(actual, expected)
    }

    func testTransformXXIV_ShouldReturn24() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XXIV"
        
        let actual = try sut.transform(roman)
        
        let expected = 24
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformXXXIX_ShouldReturn39() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XXXIX"
        
        let actual = try sut.transform(roman)
        
        let expected = 39
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformXL_ShouldReturn40() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XL"
        
        let actual = try sut.transform(roman)
        
        let expected = 40
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformXCIX_ShouldReturn99() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XCIX"
        
        let actual = try sut.transform(roman)
        
        let expected = 99
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformCCCXC_ShouldReturn390() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "CCCXC"
        
        let actual = try sut.transform(roman)
        
        let expected = 390
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformXCI_ShouldReturn91() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XCI"
        
        let actual = try sut.transform(roman)
        
        let expected = 91
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformXLIX_ShouldReturn49() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XLIX"
        
        let actual = try sut.transform(roman)
        
        let expected = 49
        XCTAssertEqual(actual, expected)
    }
    
    func testTransformC_ShouldReturn100() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "C"
        
        let actual = try sut.transform(roman)
        
        let expected = 100
        XCTAssertEqual(actual, expected)
    }
    
     
    func testTransformIIII_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "IIII"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformVIIII_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "VIIII"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformIIV_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "IIV"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformIVI_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "IVI"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformIVII_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "IVII"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformVV_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "VV"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformIIX_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "IIX"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformIXI_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "IXI"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformIXII_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "IXII"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformVX_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "VX"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformXVV_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XVV"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformIXV_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "IVX"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformXXXX_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XXXX"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformXXXVX_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XXXVX"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformXXXIIX_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XXXIIX"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformXXIIXX_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XXXIXI"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformXXL_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XXL"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformVL_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "VL"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformIL_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "IL"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformLL_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "LL"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformCCCC_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "CCCC"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformIC_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "IC"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformVC_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "VC"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformLC_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "LC"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformXXC_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XXC"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
    func testTransformXCX_ShouldThrowError() throws {
        let sut = RomanNumeralsTransformator()
        let roman = "XCX"
        
        XCTAssertThrowsError(try sut.transform(roman))
    }
    
}
