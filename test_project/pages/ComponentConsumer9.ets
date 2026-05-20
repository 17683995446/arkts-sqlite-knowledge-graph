
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { CustomerCard } from 'common/CustomerCard';
import { AuthService } from 'services/AuthService';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { CustomerText } from 'common/CustomerText';
import { CartModel } from 'models/CartModel';
import { @system.router } from '@system.router';

@Entry
@Component
export struct PageUtils251 {
  @State mError41: number = 5;
  @State mProducts33: number = 23;
  @State mProducts85: number = 8;
  @State mOrders5: number = 63;
  @State mData45: boolean = 28;
  @State mProducts65: number = 31;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


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


  async loadProducts12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders9();
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


  async refreshProducts15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts19();
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


  build() {
        ComponentView()
        ComponentController()
        ComponentUtils9()
        ComponentService7()
        ComponentService()
        ComponentHelper()
        ComponentConsumer8()
  }
}
