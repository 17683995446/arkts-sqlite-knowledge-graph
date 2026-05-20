
import { @system.router } from '@system.router';
import { DateUtils } from 'utils/DateUtils';
import { StringUtils } from 'utils/StringUtils';
import { @ohos.storage } from '@ohos.storage';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.router } from '@ohos.router';

@Entry
@Component
export struct PageController925 {
  @State mError18: string = 'value';
  @State mStatus62: boolean = 20;
  @State mData94: string = 'value';
  @State mData69: boolean = 92;
  @State mLoading46: UserModel[] = False;
  @State mOrders21: string = 'value';
  @State mOrders43: UserModel[] = [];
  @State mError39: number = 0;
  @State mList35: OrderModel[] = [];
  @State mProducts23: boolean = 94;
  @State mList28: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshList9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts15();
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


  async getUsers8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentUtils6()
        ComponentService37()
        ComponentHelper2()
        ComponentHandler41()
        ComponentManager()
        ComponentHandler7()
        ComponentView35()
        ComponentUtils96()
        ComponentWidget()
        ComponentUtils5()
        ComponentManager5()
        ComponentController3()
  }
}
