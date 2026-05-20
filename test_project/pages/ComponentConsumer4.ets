
import { DateUtils } from 'utils/DateUtils';
import { @ohos.storage } from '@ohos.storage';
import { @ohos.router } from '@ohos.router';
import { CustomerText } from 'common/CustomerText';
import { OrderModel } from 'models/OrderModel';

@Entry
@Component
export struct PageProvider562 {
  @State mLoading62: UserModel[] = False;
  @State mData40: boolean = 45;
  @State mList80: string = 'value';
  @State mUsers53: UserModel[] = [];
  @State mStatus16: UserModel[] = [];
  @State mOrders72: boolean = 92;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadOrders17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentView4()
        ComponentProvide()
        ComponentView7()
        ComponentWidget()
        ComponentController()
        ComponentUtils44()
        ComponentHandler()
        ComponentView45()
        ComponentController21()
        ComponentWidge()
        ComponentHelper6()
        ComponentUtils9()
        ComponentConsume()
  }
}
