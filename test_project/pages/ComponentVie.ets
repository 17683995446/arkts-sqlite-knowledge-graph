
import { ArrayUtils } from 'utils/ArrayUtils';
import { ValidateUtils } from 'utils/ValidateUtils';
import { CustomerButton } from 'common/CustomerButton';
import { Logger } from 'utils/Logger';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';

@Entry
@Component
export struct PageManager567 {
  @State mLoading43: number = False;
  @State mProducts56: UserModel[] = [];
  @State mOrders5: ProductModel[] = [];
  @State mStatus27: boolean = 56;
  @State mData11: number = 16;
  @State mStatus42: boolean = 58;
  @State mUsers35: boolean = 61;
  @State mProducts56: OrderModel[] = [];
  @State mList64: boolean = 94;
  @State mError9: boolean = 8;
  @State mStatus85: ProductModel[] = [];
  @State mUsers62: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshUsers10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentView23()
        ComponentUtils()
        ComponentManager()
        ComponentHelper15()
        ComponentConsumer()
  }
}
