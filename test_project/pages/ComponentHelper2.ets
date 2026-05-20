
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.hilog } from '@ohos.hilog';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { NetworkService } from 'services/NetworkService';

@Entry
@Component
export struct PageController293 {
  @State mUsers80: number = 47;
  @State mProducts68: UserModel[] = [];
  @State mStatus81: UserModel[] = [];
  @State mOrders55: ProductModel[] = [];
  @State mList86: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchData12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData11();
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


  async loadUsers16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentUtils()
        ComponentView()
        ComponentController85()
        ComponentConsumer92()
        ComponentProvider9()
        ComponentHandler()
        ComponentManager7()
        ComponentConsumer85()
  }
}
