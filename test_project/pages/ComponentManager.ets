
import { @ohos.storage } from '@ohos.storage';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @system.router } from '@system.router';
import { StringUtils } from 'utils/StringUtils';
import { NetworkService } from 'services/NetworkService';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { ConfigService } from 'services/ConfigService';

@Entry
@Component
export struct PageHandler816 {
  @State mOrders70: string = 'value';
  @State mError11: UserModel[] = [];
  @State mOrders45: number = 10;
  @State mData89: UserModel[] = [];
  @State mData53: boolean = 83;
  @State mProducts87: string = 'value';
  @State mStatus88: UserModel[] = [];
  @State mOrders56: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getList19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers12();
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


  async fetchProducts11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList17();
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


  async refreshOrders4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper()
        ComponentService31()
        ComponentController()
        ComponentManager5()
        ComponentHandler6()
        ComponentView1()
        ComponentUtils20()
        ComponentUtils6()
        ComponentWidget7()
        ComponentService3()
        ComponentUtils5()
        ComponentProvider()
  }
}
