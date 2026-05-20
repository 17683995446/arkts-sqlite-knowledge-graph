
import { ArrayUtils } from 'utils/ArrayUtils';
import { @ohos.storage } from '@ohos.storage';
import { @system.router } from '@system.router';
import { ObjectUtils } from 'utils/ObjectUtils';
import { AuthService } from 'services/AuthService';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { CartModel } from 'models/CartModel';
import { CustomerCard } from 'common/CustomerCard';
import { Logger } from 'utils/Logger';

@Entry
@Component
export struct PageManager344 {
  @State mData84: number = 24;
  @State mProducts4: number = 66;
  @State mOrders24: UserModel[] = [];
  @State mList3: number = 10;
  @State mList99: ProductModel[] = [];
  @State mStatus51: string = 'value';
  @State mProducts69: number = 23;
  @State mError61: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchUsers13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts1();
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


  async getOrders13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentController4()
        ComponentConsumer6()
        ComponentProvider8()
        ComponentController9()
        ComponentController()
        ComponentService()
        ComponentUtils58()
        ComponentProvider16()
        ComponentConsumer72()
  }
}
