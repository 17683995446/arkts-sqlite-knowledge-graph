
import { @ohos.storage } from '@ohos.storage';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.hilog } from '@ohos.hilog';
import { UserModel } from 'models/UserModel';
import { NetworkService } from 'services/NetworkService';
import { CustomerButton } from 'common/CustomerButton';

@Entry
@Component
export struct PageHelper356 {
  @State mProducts84: string = 'value';
  @State mProducts6: boolean = 76;
  @State mLoading79: boolean = False;
  @State mLoading1: UserModel[] = False;
  @State mOrders82: string = 'value';
  @State mData76: string = 'value';
  @State mProducts20: string = 'value';
  @State mList85: number = 34;
  @State mProducts7: OrderModel[] = [];
  @State mOrders41: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadList2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList2();
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


  async getData18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


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


  build() {
        ComponentWidget()
        ComponentConsumer9()
        ComponentService()
        ComponentService()
        ComponentHelper6()
        ComponentService17()
        ComponentProvider69()
        ComponentService82()
        ComponentHandle()
        ComponentUtils41()
        ComponentController()
        ComponentConsumer()
        ComponentConsumer26()
  }
}
