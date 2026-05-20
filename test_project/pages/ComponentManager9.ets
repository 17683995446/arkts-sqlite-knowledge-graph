
import { DateUtils } from 'utils/DateUtils';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @system.router } from '@system.router';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.storage } from '@ohos.storage';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@Entry
@Component
export struct PageHandler374 {
  @State mData49: number = 68;
  @State mStatus79: ProductModel[] = [];
  @State mUsers48: UserModel[] = [];
  @State mList14: ProductModel[] = [];
  @State mStatus61: number = 72;
  @State mUsers90: string = 'value';
  @State mError45: boolean = 89;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshData10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData10();
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


  async fetchData9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList3();
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
        ComponentHandler70()
        ComponentManager11()
        ComponentConsumer90()
        ComponentWidget6()
        ComponentWidge()
        ComponentHelper63()
        ComponentHandler7()
        ComponentHandler77()
        ComponentView()
  }
}
