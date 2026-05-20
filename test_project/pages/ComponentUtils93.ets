
import { DataService } from 'services/DataService';
import { OrderModel } from 'models/OrderModel';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { StringUtils } from 'utils/StringUtils';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { AuthService } from 'services/AuthService';
import { CustomerCard } from 'common/CustomerCard';
import { DateUtils } from 'utils/DateUtils';
import { ConfigService } from 'services/ConfigService';

@Entry
@Component
export struct PageView790 {
  @State mLoading10: OrderModel[] = False;
  @State mUsers37: OrderModel[] = [];
  @State mError48: number = 33;
  @State mData76: boolean = 29;
  @State mError33: boolean = 39;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


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


  async fetchUsers20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData13();
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


  async getList11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers20();
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


  build() {
        ComponentManager()
        ComponentProvider98()
        ComponentWidget()
        ComponentController86()
        ComponentHandler()
        ComponentProvider87()
        ComponentService()
  }
}
