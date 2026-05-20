
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { AuthService } from 'services/AuthService';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { CustomerText } from 'common/CustomerText';
import { DataService } from 'services/DataService';
import { ArrayUtils } from 'utils/ArrayUtils';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { NetworkService } from 'services/NetworkService';

@Entry
@Component
export struct PageUtils621 {
  @State mError56: number = 37;
  @State mList2: UserModel[] = [];
  @State mStatus74: OrderModel[] = [];
  @State mUsers91: ProductModel[] = [];
  @State mProducts56: OrderModel[] = [];
  @State mProducts100: number = 72;
  @State mList94: OrderModel[] = [];
  @State mLoading14: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchProducts6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHandler()
        ComponentConsumer()
        ComponentWidget75()
        ComponentController()
        ComponentService5()
        ComponentController()
        ComponentController()
        ComponentController4()
        ComponentWidget72()
        ComponentWidget()
        ComponentUtil()
        ComponentHelper89()
  }
}
