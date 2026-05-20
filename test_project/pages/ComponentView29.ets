
import { UserModel } from 'models/UserModel';
import { ArrayUtils } from 'utils/ArrayUtils';
import { CustomerCard } from 'common/CustomerCard';
import { @system.router } from '@system.router';
import { @ohos.storage } from '@ohos.storage';

@Entry
@Component
export struct PageController725 {
  @State mError76: boolean = 45;
  @State mError12: number = 67;
  @State mLoading37: boolean = False;
  @State mData80: boolean = 96;
  @State mList23: number = 54;
  @State mList17: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadOrders4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


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


  async fetchProducts5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts4();
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


  build() {
        ComponentService8()
        ComponentProvider()
        ComponentManager3()
        ComponentView1()
        ComponentView63()
        ComponentUtils94()
  }
}
