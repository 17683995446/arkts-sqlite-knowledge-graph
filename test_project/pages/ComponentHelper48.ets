
import { ProductModel } from 'models/ProductModel';
import { CartModel } from 'models/CartModel';
import { ArrayUtils } from 'utils/ArrayUtils';
import { CustomerCard } from 'common/CustomerCard';
import { StringUtils } from 'utils/StringUtils';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.router } from '@ohos.router';
import { @system.router } from '@system.router';
import { ConfigService } from 'services/ConfigService';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';

@Entry
@Component
export struct PageManager710 {
  @State mUsers65: OrderModel[] = [];
  @State mUsers47: ProductModel[] = [];
  @State mError26: string = 'value';
  @State mData45: ProductModel[] = [];
  @State mList62: string = 'value';
  @State mProducts99: boolean = 14;
  @State mUsers38: string = 'value';
  @State mData82: ProductModel[] = [];
  @State mLoading51: OrderModel[] = False;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchOrders16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData16();
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


  build() {
        ComponentService()
        ComponentService90()
        ComponentWidget74()
        ComponentHandler52()
        ComponentManager()
        ComponentHelper50()
        ComponentWidget4()
        ComponentView3()
        ComponentService9()
        ComponentManager25()
        ComponentHandler5()
  }
}
