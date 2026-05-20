
import { ProductModel } from 'models/ProductModel';
import { DataService } from 'services/DataService';
import { NetworkService } from 'services/NetworkService';
import { @system.router } from '@system.router';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.storage } from '@ohos.storage';
import { ArrayUtils } from 'utils/ArrayUtils';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';

@Entry
@Component
export struct PageUtils779 {
  @State mList24: string = 'value';
  @State mUsers88: string = 'value';
  @State mStatus30: string = 'value';
  @State mError37: ProductModel[] = [];
  @State mUsers53: boolean = 57;
  @State mStatus91: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getOrders3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders3();
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


  async fetchData17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData17();
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


  async loadUsers9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList9();
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


  async fetchData15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper80()
        ComponentWidget()
        ComponentProvider1()
        ComponentController5()
        ComponentController81()
        ComponentUtils()
        ComponentController7()
        ComponentServic()
        ComponentProvider5()
        ComponentService()
        ComponentHelper3()
        ComponentProvider83()
        ComponentHelper51()
        ComponentHelper49()
  }
}
