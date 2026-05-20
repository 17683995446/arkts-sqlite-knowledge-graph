
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { ArrayUtils } from 'utils/ArrayUtils';
import { @system.router } from '@system.router';
import { Logger } from 'utils/Logger';
import { CustomerText } from 'common/CustomerText';
import { @ohos.promptAction } from '@ohos.promptAction';
import { CartModel } from 'models/CartModel';

@Entry
@Component
export struct PageWidget870 {
  @State mProducts37: number = 58;
  @State mError74: OrderModel[] = [];
  @State mList12: ProductModel[] = [];
  @State mUsers19: OrderModel[] = [];
  @State mError25: number = 59;
  @State mStatus74: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadData3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts16();
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


  async getProducts6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentConsumer()
        ComponentView76()
        ComponentProvider72()
        ComponentWidget()
        ComponentHandler()
        ComponentWidget3()
  }
}
