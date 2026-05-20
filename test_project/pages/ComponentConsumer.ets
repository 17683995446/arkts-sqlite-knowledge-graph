
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { AuthService } from 'services/AuthService';
import { CartModel } from 'models/CartModel';

@Entry
@Component
export struct PageView73 {
  @State mOrders2: UserModel[] = [];
  @State mStatus12: boolean = 96;
  @State mError48: OrderModel[] = [];
  @State mStatus23: OrderModel[] = [];
  @State mProducts75: ProductModel[] = [];
  @State mData83: OrderModel[] = [];
  @State mList87: OrderModel[] = [];
  @State mProducts46: boolean = 77;
  @State mData35: UserModel[] = [];
  @State mLoading30: number = False;
  @State mProducts73: UserModel[] = [];
  @State mUsers89: OrderModel[] = [];
  @State mList5: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadList4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentProvider5()
        ComponentHandler30()
        ComponentWidget69()
        ComponentService99()
        ComponentProvider81()
        ComponentHelper9()
        ComponentWidget8()
  }
}
