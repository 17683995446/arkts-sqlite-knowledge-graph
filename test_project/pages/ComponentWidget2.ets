
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.promptAction } from '@ohos.promptAction';
import { CustomerButton } from 'common/CustomerButton';
import { ValidateUtils } from 'utils/ValidateUtils';
import { CartModel } from 'models/CartModel';
import { Logger } from 'utils/Logger';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { OrderModel } from 'models/OrderModel';

@Entry
@Component
export struct PageManager99 {
  @State mProducts54: string = 'value';
  @State mUsers12: boolean = 39;
  @State mList95: string = 'value';
  @State mStatus54: number = 94;
  @State mLoading87: OrderModel[] = False;
  @State mStatus54: OrderModel[] = [];
  @State mList4: OrderModel[] = [];
  @State mProducts76: OrderModel[] = [];
  @State mStatus31: string = 'value';
  @State mLoading18: OrderModel[] = False;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchUsers10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData19();
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


  async getUsers17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentManager54()
        ComponentWidget()
        ComponentUtils7()
        ComponentWidget6()
        ComponentManager()
        ComponentHandler()
  }
}
