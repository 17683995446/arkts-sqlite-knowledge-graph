
import { OrderModel } from 'models/OrderModel';
import { DataService } from 'services/DataService';
import { @ohos.hilog } from '@ohos.hilog';
import { Logger } from 'utils/Logger';
import { @system.router } from '@system.router';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { ProductModel } from 'models/ProductModel';
import { ValidateUtils } from 'utils/ValidateUtils';
import { ConfigService } from 'services/ConfigService';
import { AuthService } from 'services/AuthService';

@Entry
@Component
export struct PageController985 {
  @State mUsers98: ProductModel[] = [];
  @State mOrders9: OrderModel[] = [];
  @State mUsers34: number = 55;
  @State mProducts66: OrderModel[] = [];
  @State mStatus59: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


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


  async getData17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders18();
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


  build() {
        ComponentConsumer7()
        ComponentProvider54()
        ComponentUtils()
        ComponentController()
        ComponentProvider4()
        ComponentWidget7()
        ComponentWidget2()
        ComponentConsumer75()
        ComponentUtils()
        ComponentWidget95()
        ComponentService()
        ComponentUtils()
        ComponentView98()
        ComponentView6()
  }
}
