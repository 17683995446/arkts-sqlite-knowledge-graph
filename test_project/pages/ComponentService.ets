
import { UserModel } from 'models/UserModel';
import { ValidateUtils } from 'utils/ValidateUtils';
import { StringUtils } from 'utils/StringUtils';
import { @ohos.storage } from '@ohos.storage';
import { CustomerButton } from 'common/CustomerButton';
import { @system.router } from '@system.router';
import { @ohos.router } from '@ohos.router';
import { ArrayUtils } from 'utils/ArrayUtils';

@Entry
@Component
export struct PageHandler163 {
  @State mLoading38: ProductModel[] = False;
  @State mProducts100: number = 47;
  @State mLoading13: UserModel[] = False;
  @State mError19: OrderModel[] = [];
  @State mList56: UserModel[] = [];
  @State mData64: ProductModel[] = [];
  @State mProducts6: string = 'value';
  @State mList54: UserModel[] = [];
  @State mOrders70: OrderModel[] = [];
  @State mData34: number = 47;
  @State mLoading36: number = False;
  @State mUsers76: OrderModel[] = [];
  @State mError37: number = 13;
  @State mList99: number = 67;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getData4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders7();
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


  async loadUsers9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper()
        ComponentManager6()
        ComponentManager4()
        ComponentHelper40()
        ComponentService2()
        ComponentWidget6()
  }
}
