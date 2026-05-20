
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { ProductModel } from 'models/ProductModel';
import { DataService } from 'services/DataService';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.router } from '@ohos.router';

@Entry
@Component
export struct PageHandler662 {
  @State mData55: OrderModel[] = [];
  @State mLoading58: OrderModel[] = False;
  @State mOrders25: string = 'value';
  @State mStatus64: boolean = 37;
  @State mOrders10: UserModel[] = [];
  @State mProducts2: number = 33;
  @State mProducts30: number = 5;
  @State mUsers26: string = 'value';
  @State mData53: boolean = 63;
  @State mUsers42: string = 'value';
  @State mError99: UserModel[] = [];
  @State mUsers22: UserModel[] = [];
  @State mList45: number = 43;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchData20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList12();
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


  async loadList20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentProvider94()
        ComponentView85()
        ComponentManager()
        ComponentHelper8()
        ComponentController58()
        ComponentUtils()
  }
}
