import XCTest
@testable import DpaySDK

class DpaySDKTests: XCTestCase {
    func testMandatoryOptions() throws {
        
        let options: [String: Any] = [
        "locale": "en",
        "environment": "staging",
        "customerId": "cust_001",
        "siteName": "MovieTicket",
        "customerEmail": "joe@ios.com",
        "accessToken": "aOPQRSxxxxxx",
        "orderId": "order_aBxxxxxxx",
        "amount": "23423",
        "currency": "IDR"
        ]
        let dpayDelegate = DpayDelegate()
        let session_id = dpayDelegate.sessionID
        let match = Constants.LOCAL_CHECKOUT_URL + "&locale=en&environment=staging&site_name=MovieTicket&customer_email=joe@ios.com&access_key=aOPQRSxxxxxx&order_id=order_aBxxxxxxx&customer_id=cust_001&session_id="+session_id+"&amount=23423&currency=IDR"
        XCTAssertEqual(try dpayDelegate.openCheckout(checkoutoptions: options), match)
    }
    
    func testCheckoutOptions1() throws {
        
        let options: [String: Any] = [
        "locale": "en",
        "customerId": "cust_001",
        "siteName": "MovieTicket",
        "customerEmail": "joe@ios.com",
        "accessToken": "aOPQRSxxxxxx",
        "orderId": "order_aBxxxxxxx",
        "amount": "23423",
        "currency": "IDR"
        ]
        let dpayDelegate = DpayDelegate()

        XCTAssertThrowsError(try dpayDelegate.openCheckout(checkoutoptions: options), "Environment must not be empty")
    }
    
    func testCheckoutOptions2() throws {
        
        let options: [String: Any] = [
            "environment": "staging",
            "customerId": "cust_001",
            "siteName": "MovieTicket",
            "customerEmail": "joe@ios.com",
            "accessToken": "aOPQRSxxxxxx",
            "orderId": "order_aBxxxxxxx",
            "amount": "23423",
            "currency": "IDR"
        ]
        let dpayDelegate = DpayDelegate()

        XCTAssertThrowsError(try dpayDelegate.openCheckout(checkoutoptions: options), "Locale must not be empty")
    }

    func testCheckoutOptions3() throws {
        
        let options: [String: Any] = [
            "locale": "en",
            "environment": "staging",
            "siteName": "MovieTicket",
            "customerEmail": "joe@ios.com",
            "accessToken": "aOPQRSxxxxxx",
            "orderId": "order_aBxxxxxxx",
            "amount": "23423",
            "currency": "IDR"
        ]
        let dpayDelegate = DpayDelegate()

        XCTAssertThrowsError(try dpayDelegate.openCheckout(checkoutoptions: options), "CustomerID must not be empty")
    }
    
    func testCheckoutOptions4() throws {
        
        let options: [String: Any] = [
            "locale": "en",
            "environment": "staging",
            "customerId": "cust_001",
            "customerEmail": "joe@ios.com",
            "accessToken": "aOPQRSxxxxxx",
            "orderId": "order_aBxxxxxxx",
            "amount": "23423",
            "currency": "IDR"
        ]
        let dpayDelegate = DpayDelegate()

        XCTAssertThrowsError(try dpayDelegate.openCheckout(checkoutoptions: options), "Site Name must not be empty")
    }
    
    func testCheckoutOptions5() throws {
        
        let options: [String: Any] = [
            "locale": "en",
            "environment": "staging",
            "customerId": "cust_001",
            "siteName": "MovieTicket",
            "accessToken": "aOPQRSxxxxxx",
            "orderId": "order_aBxxxxxxx",
            "amount": "23423",
            "currency": "IDR"
        ]
        let dpayDelegate = DpayDelegate()

        XCTAssertThrowsError(try dpayDelegate.openCheckout(checkoutoptions: options)) 
    }
    
    func testCheckoutOptions6() throws {
        
        let options: [String: Any] = [
            "locale": "en",
            "environment": "staging",
            "customerId": "cust_001",
            "siteName": "MovieTicket",
            "customerEmail": "joe@ios.com",
            "orderId": "order_aBxxxxxxx",
            "amount": "23423",
            "currency": "IDR"
        ]
        let dpayDelegate = DpayDelegate()

        XCTAssertThrowsError(try dpayDelegate.openCheckout(checkoutoptions: options), "Access Token must not be empty")
    }
    
    func testCheckoutOptions7() throws {
        
        let options: [String: Any] = [
            "locale": "en",
            "environment": "staging",
            "customerId": "cust_001",
            "siteName": "MovieTicket",
            "customerEmail": "joe@ios.com",
            "accessToken": "aOPQRSxxxxxx",
            "amount": "23423",
            "currency": "IDR"
        ]
        let dpayDelegate = DpayDelegate()

        XCTAssertThrowsError(try dpayDelegate.openCheckout(checkoutoptions: options), "Order Id must not be empty")
    }

    
    func testCheckoutOptions8() throws {
        
        let options: [String: Any] = [
            "locale": "en",
            "environment": "staging",
            "customerId": "cust_001",
            "siteName": "MovieTicket",
            "customerEmail": "joe@ios.com",
            "accessToken": "aOPQRSxxxxxx",
            "orderId": "order_aBxxxxxxx",
            "currency": "IDR"
        ]
        let dpayDelegate = DpayDelegate()

        XCTAssertThrowsError(try dpayDelegate.openCheckout(checkoutoptions: options))
    }
    
    func testCheckoutOptions9() throws {
        
        let options: [String: Any] = [
            "locale": "en",
            "environment": "staging",
            "customerId": "cust_001",
            "siteName": "MovieTicket",
            "customerEmail": "joe@ios.com",
            "accessToken": "aOPQRSxxxxxx",
            "orderId": "order_aBxxxxxxx",
            "amount": "23423",
        ]
        let dpayDelegate = DpayDelegate()

        XCTAssertThrowsError(try dpayDelegate.openCheckout(checkoutoptions: options))
    }
    
    
    func testCheckoutOptions10() throws {
        
        let options: [String: Any] = [
            "locale": "en",
            "environment": "staging",
            "customerId": "cust_001",
            "siteName": "MovieTicket",
            "customerEmail": "joe@ios.com",
            "accessToken": "aOPQRSxxxxxx",
            "orderId": "order_aBxxxxxxx",
            "currency": "IDR"
        ]
        let dpayDelegate = DpayDelegate()

        XCTAssertThrowsError(try dpayDelegate.openCheckout(checkoutoptions: options))
    }
    
    func testCheckoutOptionalOptions1() throws {
        
        let options: [String: Any] = [
            "locale": "en",
            "environment": "staging",
            "customerId": "cust_001",
            "siteName": "MovieTicket",
            "customerEmail": "joe@ios.com",
            "accessToken": "aOPQRSxxxxxx",
            "orderId": "order_aBxxxxxxx",
            "amount": "23423",
            "currency": "IDR",
            "paymentType": "installment",
            
        ]
        let dpayDelegate = DpayDelegate()
        let session_id = dpayDelegate.sessionID
        let match = Constants.LOCAL_CHECKOUT_URL + "&locale=en&environment=staging&site_name=MovieTicket&customer_email=joe@ios.com&access_key=aOPQRSxxxxxx&order_id=order_aBxxxxxxx&customer_id=cust_001&session_id="+session_id+"&amount=23423&currency=IDR&type=installment"
        XCTAssertEqual(try dpayDelegate.openCheckout(checkoutoptions: options), match)
    }
    
    func testCheckoutOptionalOptions2() throws {
        
        let options: [String: Any] = [
            "locale": "en",
            "environment": "staging",
            "customerId": "cust_001",
            "siteName": "MovieTicket",
            "customerEmail": "joe@ios.com",
            "accessToken": "aOPQRSxxxxxx",
            "orderId": "order_aBxxxxxxx",
            "amount": "23423",
            "currency": "IDR",
            "paymentType": "installment",
            "label": "Green City",
            "receiverName": "Jayraj",
            "receiverPhone": "8199999999",
            "landmark": "Palya",
            "customerGivenName": "Pavan",
            "customerMobile": "8888999988",
            "customerAddressLine1": "Kamanhalli, Block road, Turner",
            "customerAddressLine2": "",
            "customerCity": "Bangalore",
            "customerRegion": "Asia",
            "customerCountry": "India",
            "customerPostalCode": "424343"
            
        ]
        let dpayDelegate = DpayDelegate()
        let session_id = dpayDelegate.sessionID
        let match = Constants.LOCAL_CHECKOUT_URL + "&locale=en&environment=staging&site_name=MovieTicket&customer_email=joe@ios.com&access_key=aOPQRSxxxxxx&order_id=order_aBxxxxxxx&customer_id=cust_001&session_id="+session_id+"&amount=23423&currency=IDR&type=installment&label=Green City&receiver_name=Jayraj&receiver_phone=8199999999&landmark=Palya&customer_given_name=Pavan&customer_mobile=8888999988&customer_address_line1=Kamanhalli, Block road, Turner&customer_address_line2=&customer_city=Bangalore&customer_region=Asia&customer_country=India&customer_postal_code=424343"
        XCTAssertEqual(try dpayDelegate.openCheckout(checkoutoptions: options), match)
    }
}
