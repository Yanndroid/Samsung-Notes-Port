.class public Lcom/samsung/android/support/senl/document/SDocLocker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHAR_TABLE:[C

.field private static final PREF_KEY_NOTES_ANDROID_ID:Ljava/lang/String; = "NotesDeviceID#2"

.field private static final PREF_KEY_NOTES_DEVICE_UUID:Ljava/lang/String; = "NotesDeviceID#1"

.field private static final PREF_KEY_NOTES_SERIAL_NUMBER:Ljava/lang/String; = "NotesDeviceID#3"

.field private static final PREF_NAME_DEVICE_INFO:Ljava/lang/String; = "NotesDeviceInfo"

.field private static final STRING_DEFAULT:Ljava/lang/String; = "#_ empty"

.field public static final USER_CODE_PADDING_2:I = 0x0

.field public static final USER_CODE_PADDING_6:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/support/senl/document/SDocLocker;->CHAR_TABLE:[C

    return-void

    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mSharedPreferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mEditor:Landroid/content/SharedPreferences$Editor;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mSharedPreferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mEditor:Landroid/content/SharedPreferences$Editor;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

    const-string v0, "NotesDeviceInfo"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mSharedPreferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

    return-void
.end method

.method private static getRandomString(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    sget-object v3, Lcom/samsung/android/support/senl/document/SDocLocker;->CHAR_TABLE:[C

    array-length v4, v3

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getUserCode()[Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "NotesDeviceID#1"

    const-string v2, "#_ empty"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v4, :cond_2

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mEditor:Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->detourUtils_commitEditor(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "NotesDeviceID#2"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "android_id"

    invoke-static {v1, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mEditor:Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->detourUtils_commitEditor(Landroid/content/SharedPreferences$Editor;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object v1, v3

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "NotesDeviceID#3"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x10

    if-eqz v5, :cond_7

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_6

    goto :goto_0

    :cond_6
    move-object v3, v5

    goto :goto_1

    :cond_7
    :goto_0
    invoke-static {v7}, Lcom/samsung/android/support/senl/document/SDocLocker;->getRandomString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mEditor:Landroid/content/SharedPreferences$Editor;

    :cond_8
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->detourUtils_commitEditor(Landroid/content/SharedPreferences$Editor;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_1

    :cond_9
    move-object v3, v2

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

    invoke-virtual {v6, v1, v3, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

    invoke-virtual {v5, v1, v3, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    aput-object v0, v2, v4

    :goto_2
    return-object v2
.end method

.method public is64bitCodeAvailable()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "NotesDeviceID#3"

    const-string v2, "#_ empty"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    const/16 v4, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_2

    :cond_0
    invoke-static {v4}, Lcom/samsung/android/support/senl/document/SDocLocker;->getRandomString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mEditor:Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/SDocLocker;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->detourUtils_commitEditor(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_3

    return v3

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
