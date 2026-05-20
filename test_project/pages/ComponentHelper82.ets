
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { UserModel } from 'models/UserModel';
import { CustomerCard } from 'common/CustomerCard';
import { StringUtils } from 'utils/StringUtils';
import { OrderModel } from 'models/OrderModel';
import { NetworkService } from 'services/NetworkService';
import { ConfigService } from 'services/ConfigService';

@Entry
@Component
export struct PageUtils303 {
  @State mLoading2: boolean = False;
  @State mStatus68: OrderModel[] = [];
  @State mLoading27: OrderModel[] = False;
  @State mError54: UserModel[] = [];
  @State mLoading35: ProductModel[] = False;
  @State mData79: string = 'value';
  @State mStatus55: string = 'value';
  @State mData47: number = 77;
  @State mUsers75: number = 25;
  @State mProducts21: ProductModel[] = [];
  @State mList64: number = 89;
  @State mData84: number = 56;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getData9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentProvider17()
        ComponentView80()
        ComponentWidge()
        ComponentView9()
        ComponentController()
        ComponentController()
        ComponentController82()
        ComponentView5()
        ComponentWidget4()
        ComponentHandler22()
        ComponentWidget()
        ComponentHandler9()
  }
}
