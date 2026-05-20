
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { ValidateUtils } from 'utils/ValidateUtils';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { AuthService } from 'services/AuthService';
import { NetworkService } from 'services/NetworkService';
import { CustomerText } from 'common/CustomerText';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';

@Entry
@Component
export struct PageProvider602 {
  @State mList46: string = 'value';
  @State mError17: OrderModel[] = [];
  @State mStatus39: ProductModel[] = [];
  @State mData39: string = 'value';
  @State mList34: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadList12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentConsumer8()
        ComponentUtils8()
        ComponentService3()
        ComponentProvider4()
        ComponentWidget52()
        ComponentServic()
        ComponentService()
  }
}
