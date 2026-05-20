
import { Logger } from 'utils/Logger';
import { ConfigService } from 'services/ConfigService';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { AuthService } from 'services/AuthService';
import { DateUtils } from 'utils/DateUtils';
import { CartModel } from 'models/CartModel';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { UserModel } from 'models/UserModel';

@Entry
@Component
export struct PageView993 {
  @State mStatus68: UserModel[] = [];
  @State mOrders20: UserModel[] = [];
  @State mError61: OrderModel[] = [];
  @State mList23: ProductModel[] = [];
  @State mProducts39: number = 10;
  @State mProducts14: ProductModel[] = [];
  @State mError21: OrderModel[] = [];
  @State mError31: boolean = 19;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadUsers17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders3();
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


  async refreshData2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentUtils5()
        ComponentHelper28()
        ComponentController5()
        ComponentProvider()
        ComponentUtils7()
  }
}
