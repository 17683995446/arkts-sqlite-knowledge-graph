
import { DataService } from 'services/DataService';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { ArrayUtils } from 'utils/ArrayUtils';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { UserModel } from 'models/UserModel';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@Entry
@Component
export struct PageService441 {
  @State mData39: boolean = 64;
  @State mUsers4: boolean = 0;
  @State mStatus18: ProductModel[] = [];
  @State mUsers97: number = 100;
  @State mUsers80: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


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


  async loadProducts15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


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


  async refreshData19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentWidget()
        ComponentService39()
        ComponentManager9()
        ComponentView16()
        ComponentView6()
        ComponentConsumer6()
        ComponentProvider82()
        ComponentUtils()
        ComponentUtils()
        ComponentProvider8()
        ComponentController50()
        ComponentView8()
  }
}
