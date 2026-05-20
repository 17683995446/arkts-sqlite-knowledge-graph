
import { CustomerText } from 'common/CustomerText';
import { StringUtils } from 'utils/StringUtils';
import { ProductModel } from 'models/ProductModel';
import { ValidateUtils } from 'utils/ValidateUtils';
import { ObjectUtils } from 'utils/ObjectUtils';
import { ConfigService } from 'services/ConfigService';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { CartModel } from 'models/CartModel';

@Entry
@Component
export struct PageView968 {
  @State mUsers62: ProductModel[] = [];
  @State mLoading57: OrderModel[] = False;
  @State mData2: string = 'value';
  @State mLoading65: string = 'value';
  @State mData76: ProductModel[] = [];
  @State mData70: string = 'value';
  @State mData96: ProductModel[] = [];
  @State mStatus77: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchData2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentView()
        ComponentView66()
        ComponentConsumer()
        ComponentManager5()
        ComponentService80()
        ComponentWidget7()
        ComponentController1()
        ComponentWidget7()
        ComponentProvider6()
        ComponentProvider66()
        ComponentService8()
        ComponentHandler16()
  }
}
