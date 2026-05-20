
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { CustomerButton } from 'common/CustomerButton';
import { CustomerText } from 'common/CustomerText';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';

@Entry
@Component
export struct PageWidget555 {
  @State mList100: UserModel[] = [];
  @State mData79: OrderModel[] = [];
  @State mLoading6: number = False;
  @State mOrders85: number = 17;
  @State mLoading100: ProductModel[] = False;
  @State mLoading37: number = False;
  @State mList88: ProductModel[] = [];
  @State mData38: boolean = 16;
  @State mList51: boolean = 24;
  @State mStatus58: number = 84;
  @State mError34: UserModel[] = [];
  @State mOrders8: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshOrders12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList3();
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


  async fetchOrders3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList13();
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


  async getOrders20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentWidget77()
        ComponentConsumer()
        ComponentService()
        ComponentController()
        ComponentView5()
        ComponentWidget48()
        ComponentVie()
  }
}
