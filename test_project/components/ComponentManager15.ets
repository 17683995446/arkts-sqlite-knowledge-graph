
import { @system.router } from '@system.router';
import { ObjectUtils } from 'utils/ObjectUtils';
import { OrderModel } from 'models/OrderModel';

@Prop
@Component
export struct ComponentWidget328 {
  @State mList7: string = 'value48';
  @State mAge27: string = 'value4';
  @State mAge19: boolean = 'true';
  @State mName39: boolean = 'true';
  @State mAge50: UserModel[] = 72;
  @State mCount27: string = 'value55';

  build() {
        Stack() {
          TextInput('Item 0')
          Text('Item 1')
          Text('Item 2')
        }
        Column() {
          Image('Item 0')
          List('Item 1')
        }
        Stack() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Row() {
          Text('Item 0')
          List('Item 1')
          List('Item 2')
        }
  }

  onInit6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
