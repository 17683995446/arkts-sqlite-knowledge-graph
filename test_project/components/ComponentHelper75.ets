
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { ArrayUtils } from 'utils/ArrayUtils';
import { DateUtils } from 'utils/DateUtils';
import { ObjectUtils } from 'utils/ObjectUtils';
import { ConfigService } from 'services/ConfigService';
import { @ohos.hilog } from '@ohos.hilog';
import { UserModel } from 'models/UserModel';

@Entry
@Component
export struct ComponentProvider864 {
  @State mCount7: boolean = 'true';
  @State mName23: UserModel[] = 95;
  @State mAge19: UserModel[] = 25;

  build() {
        Column() {
          Text('Item 0')
        }
        Stack() {
          Button('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          Text('Item 0')
          Image('Item 1')
          List('Item 2')
        }
        Stack() {
          Text('Item 0')
          Image('Item 1')
        }
        Flex() {
          Text('Item 0')
        }
        Row() {
          Button('Item 0')
          List('Item 1')
          Button('Item 2')
        }
        Row() {
          Image('Item 0')
          Button('Item 1')
          Button('Item 2')
        }
        Stack() {
          Image('Item 0')
          Button('Item 1')
        }
        Row() {
          TextInput('Item 0')
        }
  }

  onRefresh2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
