
import { @ohos.router } from '@ohos.router';
import { @ohos.hilog } from '@ohos.hilog';
import { DateUtils } from 'utils/DateUtils';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';

@StorageLink
@Component
export struct ComponentProvider303 {
  @State mStatus39: UserModel[] = 24;
  @State mStatus40: string = 'value95';
  @State mList27: string = 'value7';

  build() {
        Stack() {
          List('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Flex() {
          List('Item 0')
        }
        Flex() {
          List('Item 0')
          Button('Item 1')
        }
        Flex() {
          Text('Item 0')
          TextInput('Item 1')
          Image('Item 2')
        }
        Column() {
          List('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          TextInput('Item 0')
        }
  }

  onInit16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
