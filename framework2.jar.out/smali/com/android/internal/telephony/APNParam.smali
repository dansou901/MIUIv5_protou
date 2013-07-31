.class public Lcom/android/internal/telephony/APNParam;
.super Ljava/lang/Object;
.source "APNParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/APNParam$ClassId;,
        Lcom/android/internal/telephony/APNParam$RatType;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "APNParam"

.field static classIdMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/APNParam$ClassId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static pdnLabelMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/APNParam$ClassId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public active:Z

.field public apn_types:[Ljava/lang/String;

.field public authType:I

.field public class_id:I

.field public dns_pri:Ljava/lang/String;

.field public dns_sec:Ljava/lang/String;

.field public id:I

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public pdn_label:Ljava/lang/String;

.field public rat:I

.field public state:I

.field public timer:I

.field public type:I

.field public user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 120
    sput-object v4, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    .line 121
    sput-object v4, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    .line 160
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 164
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    .line 166
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "ota"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "internet"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "pam"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "ota"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "internet"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "pam"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 175
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "1"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "2"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "3"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "4"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_APP:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "5"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_APP:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 228
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "APNParam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create Mapping failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sput-object v4, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    .line 230
    sput-object v4, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 188
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x75

    if-ne v1, v2, :cond_3

    .line 190
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "3"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "4"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 196
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "ims"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "internet_kddi"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "admin"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "dun1_kddi"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "dun2_kddi"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "ims"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "internet_kddi"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "admin"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "dun1_kddi"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "dun2_kddi"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 211
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CKT_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 212
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "internet_ckt"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "internet_ckt"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 217
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->MPCS_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "internet_mpcs"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "ims_mpcs"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "internet_mpcs"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "ims_mpcs"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-boolean v2, p0, Lcom/android/internal/telephony/APNParam;->active:Z

    .line 237
    iput v1, p0, Lcom/android/internal/telephony/APNParam;->id:I

    .line 238
    iput-object v0, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 239
    iput-object v0, p0, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    .line 240
    iput v1, p0, Lcom/android/internal/telephony/APNParam;->type:I

    .line 241
    iput v1, p0, Lcom/android/internal/telephony/APNParam;->state:I

    .line 242
    iput v1, p0, Lcom/android/internal/telephony/APNParam;->timer:I

    .line 243
    iput v2, p0, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 244
    iput-object v0, p0, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    .line 245
    iput-object v0, p0, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    .line 246
    iput v1, p0, Lcom/android/internal/telephony/APNParam;->authType:I

    .line 247
    iput-object v0, p0, Lcom/android/internal/telephony/APNParam;->dns_pri:Ljava/lang/String;

    .line 248
    iput-object v0, p0, Lcom/android/internal/telephony/APNParam;->dns_sec:Ljava/lang/String;

    .line 249
    iput-boolean v2, p0, Lcom/android/internal/telephony/APNParam;->active:Z

    .line 250
    iput-object v0, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    .line 251
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;III)V
    .locals 2
    .parameter "n_id"
    .parameter "n_class"
    .parameter "n_name"
    .parameter "n_type"
    .parameter "n_state"
    .parameter "n_timer"

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/APNParam;->active:Z

    .line 376
    const-string v0, "APNParam"

    const-string v1, "[FIXME] Dummy APNParam ctor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .parameter "n_id"
    .parameter "n_pdn_label"
    .parameter "n_name"
    .parameter "n_type"
    .parameter "n_state"
    .parameter "n_timer"

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/internal/telephony/APNParam;-><init>()V

    .line 278
    iput p1, p0, Lcom/android/internal/telephony/APNParam;->id:I

    .line 279
    iput-object p2, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 280
    iput-object p3, p0, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    .line 281
    iput p4, p0, Lcom/android/internal/telephony/APNParam;->type:I

    .line 282
    iput p5, p0, Lcom/android/internal/telephony/APNParam;->state:I

    .line 283
    iput p6, p0, Lcom/android/internal/telephony/APNParam;->timer:I

    .line 284
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "n_id"
    .parameter "n_pdn_label"
    .parameter "n_name"
    .parameter "n_type"
    .parameter "n_state"
    .parameter "n_timer"
    .parameter "n_rat"
    .parameter "n_user"
    .parameter "n_pass"
    .parameter "n_auth_type"

    .prologue
    .line 268
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    .line 269
    iput p7, p0, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 270
    iput-object p8, p0, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    .line 271
    iput-object p9, p0, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    .line 272
    iput p10, p0, Lcom/android/internal/telephony/APNParam;->authType:I

    .line 273
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "n_id"
    .parameter "n_pdn_label"
    .parameter "n_name"
    .parameter "n_type"
    .parameter "n_state"
    .parameter "n_timer"
    .parameter "n_rat"
    .parameter "n_user"
    .parameter "n_pass"
    .parameter "n_auth_type"
    .parameter "n_dns_pri"
    .parameter "n_dns_sec"

    .prologue
    .line 261
    invoke-direct/range {p0 .. p10}, Lcom/android/internal/telephony/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 262
    iput-object p11, p0, Lcom/android/internal/telephony/APNParam;->dns_pri:Ljava/lang/String;

    .line 263
    iput-object p12, p0, Lcom/android/internal/telephony/APNParam;->dns_sec:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "n_id"
    .parameter "n_pdn_label"
    .parameter "n_name"
    .parameter "n_type"
    .parameter "n_state"
    .parameter "n_timer"
    .parameter "n_rat"
    .parameter "n_user"
    .parameter "n_pass"
    .parameter "n_auth_type"
    .parameter "n_dns_pri"
    .parameter "n_dns_sec"
    .parameter "n_apn_type"

    .prologue
    .line 255
    invoke-direct/range {p0 .. p12}, Lcom/android/internal/telephony/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 256
    iput-object p13, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    .line 257
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "pdn_label"
    .parameter "rat"

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/internal/telephony/APNParam;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 291
    iput p2, p0, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 292
    return-void
.end method

.method public static ClassIdToPdnLabel(Lcom/android/internal/telephony/APNParam$ClassId;)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 321
    sget-object v0, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 323
    const-string v2, "APNParam"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassIdToPdnLabel: classIdMapping="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ClassId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 331
    :goto_1
    return-object v0

    .line 323
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 326
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    const-string v0, "APNParam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassIdToPdnLabel: cannot find mapping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 329
    goto :goto_1

    .line 331
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 6
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 381
    iget-object v5, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v4

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 386
    .local v3, t:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "default"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "hipri"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 390
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 385
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getClassId()Lcom/android/internal/telephony/APNParam$ClassId;
    .locals 3

    .prologue
    .line 301
    sget-object v0, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 303
    :cond_0
    const-string v1, "APNParam"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClassId: pdnLabelMapping="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pdn_label="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v0, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_NONE:Lcom/android/internal/telephony/APNParam$ClassId;

    .line 311
    :goto_1
    return-object v0

    .line 303
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 306
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 308
    const-string v0, "APNParam"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClassId: cannot find mapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-object v0, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_NONE:Lcom/android/internal/telephony/APNParam$ClassId;

    goto :goto_1

    .line 311
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/APNParam$ClassId;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget v2, p0, Lcom/android/internal/telephony/APNParam;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    const-string v2, ", Pdn_label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v2, ", Apn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v2, ", Protocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget v2, p0, Lcom/android/internal/telephony/APNParam;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    const-string v2, ", State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget v2, p0, Lcom/android/internal/telephony/APNParam;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    const-string v2, ", Timer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget v2, p0, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string v2, ", RadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget v2, p0, Lcom/android/internal/telephony/APNParam;->rat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    const-string v2, ", AuthType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget v2, p0, Lcom/android/internal/telephony/APNParam;->authType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    const-string v2, ", Apntype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 365
    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_1
    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
