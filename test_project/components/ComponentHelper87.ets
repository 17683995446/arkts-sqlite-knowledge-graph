
import { ConfigService } from 'services/ConfigService';
import { OrderModel } from 'models/OrderModel';
import { ProductModel } from 'models/ProductModel';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';

@Component
@Component
export struct ComponentView361 {
  @State mCount50: number = 72;
  @State mAge18: boolean = 'true';
  @State mList36: number = 55;

  build() {
        Flex() {
          List('Item 0')
          TextInput('Item 1')
          Image('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          Text('Item 1')
        }
        Row() {
          Text('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Column() {
          Button('Item 0')
        }
  }

  onChange3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
