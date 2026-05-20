
import { @ohos.router } from '@ohos.router';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.promptAction } from '@ohos.promptAction';
import { OrderModel } from 'models/OrderModel';
import { DateUtils } from 'utils/DateUtils';
import { ConfigService } from 'services/ConfigService';

@Entry
@Component
export struct PageUtils811 {
  @State mProducts100: ProductModel[] = [];
  @State mStatus6: UserModel[] = [];
  @State mStatus79: string = 'value';
  @State mUsers86: ProductModel[] = [];
  @State mError42: UserModel[] = [];
  @State mError84: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getList13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentConsumer()
        ComponentView()
        ComponentService67()
        ComponentConsumer6()
        ComponentView7()
        ComponentWidget96()
        ComponentHelper79()
        ComponentView35()
        ComponentController()
  }
}
