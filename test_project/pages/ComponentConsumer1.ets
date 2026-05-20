
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { OrderModel } from 'models/OrderModel';
import { DateUtils } from 'utils/DateUtils';
import { ConfigService } from 'services/ConfigService';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { CartModel } from 'models/CartModel';
import { ProductModel } from 'models/ProductModel';
import { ObjectUtils } from 'utils/ObjectUtils';

@Entry
@Component
export struct PageProvider618 {
  @State mStatus65: ProductModel[] = [];
  @State mList43: ProductModel[] = [];
  @State mUsers83: UserModel[] = [];
  @State mOrders18: string = 'value';
  @State mProducts40: string = 'value';
  @State mProducts78: string = 'value';
  @State mLoading67: boolean = False;
  @State mList32: string = 'value';
  @State mUsers31: string = 'value';
  @State mLoading35: OrderModel[] = False;
  @State mData13: UserModel[] = [];
  @State mProducts71: ProductModel[] = [];
  @State mStatus53: ProductModel[] = [];
  @State mData69: OrderModel[] = [];
  @State mList27: boolean = 0;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchOrders4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData9();
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


  async refreshUsers16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentManager8()
        ComponentService7()
        ComponentHelper22()
        ComponentWidget6()
        ComponentManager36()
        ComponentService()
  }
}
