/*
 * Copyright (C) 2014 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.internal.telephony;

import static com.android.internal.telephony.RILConstants.*;
import android.content.Context;
import android.os.AsyncResult;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Parcel;
import android.telephony.Rlog;
import android.telephony.SignalStrength;

public class SproutRIL extends RIL implements CommandsInterface {

    public SproutRIL(Context context, int networkMode, int cdmaSubscription) {
	    super(context, networkMode, cdmaSubscription, null);
    }

    public SproutRIL(Context context, int networkMode, int cdmaSubscription, Integer instanceId) {
	    super(context, networkMode, cdmaSubscription, instanceId);
    }

    @Override
    public void setUiccSubscription(int slotId, int appIndex, int subId,
				    int subStatus, Message result) {
	    if (RILJ_LOGD) riljLog("setUiccSubscription" + slotId + " " + appIndex + " " + subId + " " + subStatus);
	    AsyncResult.forMessage(result, 0, null);
	    result.sendToTarget();
	    if (subStatus == 1) {
		    // Subscription changed: enabled
		    if (mSubscriptionStatusRegistrants != null) {
			    mSubscriptionStatusRegistrants.notifyRegistrants(
									     new AsyncResult (null, new int[] {1}, null));
		    }
	    } else if (subStatus == 0) {
		    // Subscription changed: disabled
		    if (mSubscriptionStatusRegistrants != null) {
			    mSubscriptionStatusRegistrants.notifyRegistrants(
									     new AsyncResult (null, new int[] {0}, null));
		    }
	    }
    }

    public void setDataSubscription(Message response) {
	   // Fake the message
	    AsyncResult.forMessage(response, 0, null);
	    response.sendToTarget();
    }

    public void setDefaultVoiceSub(int subIndex, Message response) {
	    // Fake the message
	    AsyncResult.forMessage(response, 0, null);
	    response.sendToTarget();
    }
}
