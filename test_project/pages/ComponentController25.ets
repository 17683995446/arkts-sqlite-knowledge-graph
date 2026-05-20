
import { CartModel } from 'models/CartModel';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { CustomerText } from 'common/CustomerText';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { DataService } from 'services/DataService';
import { StringUtils } from 'utils/StringUtils';

@Entry
@Component
export struct PageUtils931 {
  @State mError26: boolean = 59;
  @State mUsers14: boolean = 85;
  @State mProducts63: number = 24;
  @State mData4: boolean = 86;
  @State mProducts25: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshUsers9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList14();
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


  async loadData20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentProvider()
        ComponentHelper4()
        ComponentProvider9()
        ComponentService()
        ComponentServic()
        ComponentWidget9()
        ComponentService73()
        ComponentHelper1()
        ComponentProvider2()
        ComponentUtils3()
        ComponentView3()
        ComponentManager78()
  }
}
