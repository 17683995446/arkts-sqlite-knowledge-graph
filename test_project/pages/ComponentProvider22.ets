
import { Logger } from 'utils/Logger';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.hilog } from '@ohos.hilog';
import { CartModel } from 'models/CartModel';
import { @ohos.promptAction } from '@ohos.promptAction';
import { CustomerButton } from 'common/CustomerButton';

@Entry
@Component
export struct PageConsumer40 {
  @State mData50: OrderModel[] = [];
  @State mError11: UserModel[] = [];
  @State mStatus46: UserModel[] = [];
  @State mProducts1: ProductModel[] = [];
  @State mProducts32: UserModel[] = [];
  @State mData62: ProductModel[] = [];
  @State mData44: ProductModel[] = [];
  @State mError62: UserModel[] = [];
  @State mStatus40: UserModel[] = [];
  @State mStatus96: boolean = 81;
  @State mUsers21: UserModel[] = [];
  @State mList69: number = 2;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshOrders3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentConsumer8()
        ComponentConsumer8()
        ComponentConsumer()
        ComponentUtils14()
        ComponentWidget5()
        ComponentService7()
        ComponentConsumer7()
        ComponentService96()
        ComponentController()
        ComponentWidget43()
        ComponentView6()
        ComponentHelper30()
        ComponentHandler8()
  }
}
