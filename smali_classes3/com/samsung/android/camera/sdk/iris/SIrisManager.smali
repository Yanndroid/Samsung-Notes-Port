.class public Lcom/samsung/android/camera/sdk/iris/SIrisManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/sdk/iris/SIrisManager$MyHandler;,
        Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;,
        Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;,
        Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationResult;,
        Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;,
        Lcom/samsung/android/camera/sdk/iris/SIrisManager$OnAuthenticationCancelListener;
    }
.end annotation


# static fields
.field public static final IRIS_ACQUIRED_CHANGE_YOUR_POSITION:I = 0xc

.field public static final IRIS_ACQUIRED_EYE_NOT_PRESENT:I = 0xa

.field public static final IRIS_ACQUIRED_GOOD:I = 0x0

.field public static final IRIS_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final IRIS_ACQUIRED_MOVE_CLOSER:I = 0x3

.field public static final IRIS_ACQUIRED_MOVE_DOWN:I = 0x8

.field public static final IRIS_ACQUIRED_MOVE_FARTHER:I = 0x4

.field public static final IRIS_ACQUIRED_MOVE_LEFT:I = 0x5

.field public static final IRIS_ACQUIRED_MOVE_RIGHT:I = 0x6

.field public static final IRIS_ACQUIRED_MOVE_SOMEWHERE_DARKER:I = 0xb

.field public static final IRIS_ACQUIRED_MOVE_UP:I = 0x7

.field public static final IRIS_ACQUIRED_OPEN_EYES_WIDER:I = 0x9

.field public static final IRIS_ACQUIRED_PARTIAL:I = 0x1

.field public static final IRIS_AUTH_TYPE_NONE:I = 0x0

.field public static final IRIS_AUTH_TYPE_PREVIEW_CALLBACK:I = 0x1

.field public static final IRIS_AUTH_TYPE_UI_WITH_PREVIEW:I = 0x2

.field public static final IRIS_DISABLE_PREVIEW_CALLBACK:I = 0x7

.field public static final IRIS_ENABLE_PREVIEW_CALLBACK:I = 0x6

.field public static final IRIS_ERROR_AUTH_VIEW_SIZE:I = 0xa

.field public static final IRIS_ERROR_AUTH_WINDOW_TOKEN:I = 0xb

.field public static final IRIS_ERROR_CANCELED:I = 0x4

.field public static final IRIS_ERROR_EVICTED:I = 0xd

.field public static final IRIS_ERROR_EVICTED_DUE_TO_VIDEO_CALL:I = 0xe

.field public static final IRIS_ERROR_EYE_SAFETY_TIMEOUT:I = 0x9

.field public static final IRIS_ERROR_FLIP_OFF:I = 0x11

.field public static final IRIS_ERROR_HW_UNAVAILABLE:I = 0x0

.field public static final IRIS_ERROR_LOCKOUT:I = 0x6

.field public static final IRIS_ERROR_LOCKOUT_PERMANENT:I = 0x10

.field public static final IRIS_ERROR_NEED_SET_LOCK_TYPE:I = 0x12

.field public static final IRIS_ERROR_NO_EYE_DETECTED:I = 0xf

.field public static final IRIS_ERROR_OPEN_IR_CAMERA_FAIL:I = 0x8

.field public static final IRIS_ERROR_PROXIMITY_TIMEOUT:I = 0xc

.field public static final IRIS_ERROR_START_IR_CAMERA_PREVIEW_FAIL:I = 0x7

.field public static final IRIS_ERROR_TIMEOUT:I = 0x2

.field public static final IRIS_ERROR_UNABLE_TO_PROCESS:I = 0x1

.field public static final IRIS_INVISIBLE_PREVIEW:I = 0x4

.field public static final IRIS_REQUEST_GET_UNIQUE_ID:I = 0x7

.field public static final IRIS_VISIBLE_PREVIEW:I = 0x5

.field private static final MANAGE_IRIS:Ljava/lang/String; = "com.samsung.android.camera.iris.permission.MANAGE_IRIS"

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_AUTHENTICATION_SUCCEEDED_FIDO_RESULT_DATA:I = 0x6b

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_IR_IMAGE:I = 0x6a

.field public static final SDK_VERSION:I = 0x100000d

.field private static final SYSTEM_FEATURE_IRIS:Ljava/lang/String; = "com.samsung.android.camera.iris"

.field private static final TAG:Ljava/lang/String; = "SIrisManager"

.field private static final USE_IRIS:Ljava/lang/String; = "com.samsung.android.camera.iris.permission.USE_IRIS"

.field private static mSIrisManager:Lcom/samsung/android/camera/sdk/iris/SIrisManager;


# instance fields
.field private mAuthBegin:J

.field private mAuthenticationCallback:Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;

.field private mGetterHandler:Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;

.field private mHandler:Landroid/os/Handler;

.field private mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

.field private mService:Lcom/samsung/android/camera/iris/IIrisService;

.field private mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

.field private mToken:Landroid/os/IBinder;

.field private mView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mToken:Landroid/os/IBinder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mAuthBegin:J

    new-instance v0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;

    invoke-direct {v0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mGetterHandler:Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;

    new-instance v0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$2;-><init>(Lcom/samsung/android/camera/sdk/iris/SIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iput-object p1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/sdk/iris/SIrisManager;Landroid/content/Context;Lcom/samsung/android/camera/sdk/iris/SIrisManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/camera/iris/IIrisService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mToken:Landroid/os/IBinder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mAuthBegin:J

    new-instance v0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;

    invoke-direct {v0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mGetterHandler:Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;

    new-instance v0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$2;-><init>(Lcom/samsung/android/camera/sdk/iris/SIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iput-object p1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-nez p2, :cond_0

    const-string p2, "SIrisManager"

    const-string v0, "SIrisManagerService was null"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p2, Lcom/samsung/android/camera/sdk/iris/SIrisManager$MyHandler;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/sdk/iris/SIrisManager;Landroid/content/Context;Lcom/samsung/android/camera/sdk/iris/SIrisManager$1;)V

    iput-object p2, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/camera/sdk/iris/SIrisManager;Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->cancelAuthentication(Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/samsung/android/camera/sdk/iris/SIrisManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/camera/sdk/iris/SIrisManager;Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->checkAuthViewWindowToken(Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/camera/sdk/iris/SIrisManager;)Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/camera/sdk/iris/SIrisManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/camera/sdk/iris/SIrisManager;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/camera/sdk/iris/SIrisManager;)Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mCryptoObject:Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/camera/sdk/iris/SIrisManager;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->getAcquiredString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private authenticate(Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .locals 30

    move-object/from16 v12, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v13, p4

    if-eqz v13, :cond_7

    const-string v14, "SIrisManager"

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "authentication already canceled"

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$OnAuthenticationCancelListener;

    invoke-direct {v0, v12, v1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$OnAuthenticationCancelListener;-><init>(Lcom/samsung/android/camera/sdk/iris/SIrisManager;Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;)V

    invoke-virtual {v2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, v12, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_6

    move-object/from16 v5, p5

    :try_start_0
    invoke-direct {v12, v5}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->useHandler(Landroid/os/Handler;)V

    iput-object v13, v12, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;

    iput-object v1, v12, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mCryptoObject:Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->getOpId()J

    move-result-wide v3

    goto :goto_0

    :cond_3
    const-wide/16 v3, 0x0

    :goto_0
    move-wide/from16 v22, v3

    if-eqz v1, :cond_4

    iget-object v0, v12, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mCryptoObject:Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;

    invoke-virtual {v0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    move-object/from16 v29, v0

    if-nez p8, :cond_5

    iget-object v15, v12, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v0, v12, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mToken:Landroid/os/IBinder;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v1, v12, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-object v2, v12, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v16, v0

    move/from16 v24, p6

    move-object/from16 v25, v1

    move/from16 v26, p3

    move-object/from16 v28, p7

    invoke-interface/range {v15 .. v29}, Lcom/samsung/android/camera/iris/IIrisService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v12, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mAuthBegin:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, v22

    move-object/from16 v11, v29

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->checkAuthViewWindowToken(Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "Remote exception while authenticating"

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {v12, v0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static byteArrayToHex([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cancelAuthentication(Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;)V
    .locals 3

    const-string p1, "SIrisManager"

    const-string v0, "cancelAuthentication"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Remote exception while canceling authentication"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private checkAuthViewWindowToken(Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 29

    move-object/from16 v13, p0

    move-object/from16 v5, p4

    const-string/jumbo v0, "x"

    iget-object v1, v13, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mGetterHandler:Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;

    invoke-direct {v1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;-><init>()V

    iput-object v1, v13, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mGetterHandler:Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;

    :cond_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "SIrisManager"

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, v13, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mAuthBegin:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0xbb8

    cmp-long v0, v0, v3

    if-ltz v0, :cond_1

    const-string v0, "checkAuthViewWindowToken is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v13, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mGetterHandler:Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;

    invoke-virtual {v0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    return-void

    :cond_1
    iget-object v14, v13, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mGetterHandler:Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;

    new-instance v15, Lcom/samsung/android/camera/sdk/iris/SIrisManager$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$1;-><init>(Lcom/samsung/android/camera/sdk/iris/SIrisManager;Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    invoke-virtual {v14, v15}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object v1, v13, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mGetterHandler:Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;

    invoke-virtual {v1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v16

    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v4, p8

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v6, v13, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mToken:Landroid/os/IBinder;

    if-nez v6, :cond_3

    const-string v6, "mToken null"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->getMinimumIrisViewSize()Landroid/util/Size;

    move-result-object v6

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-lt v7, v8, :cond_4

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_5

    :cond_4
    if-eqz v5, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid irisView size. IrisView\'s proper size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", but app\'s size:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v14, v13, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v15, v13, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    aget v17, v3, v0

    aget v18, v3, v1

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v19

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v20

    iget-object v0, v13, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-object v3, v13, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v26

    move-wide/from16 v21, p9

    move/from16 v23, p6

    move-object/from16 v24, v0

    move/from16 v25, p3

    move-object/from16 v27, p7

    move-object/from16 v28, p11

    invoke-interface/range {v14 .. v28}, Lcom/samsung/android/camera/iris/IIrisService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Remote exception while authenticating"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_6

    invoke-direct {v13, v1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private declared-synchronized ensureServiceConnected()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    instance-of v0, v0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->startIrisService()V

    invoke-direct {p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->waitForService()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getAcquiredString(I)Ljava/lang/String;
    .locals 6

    const-string v0, "SIrisManager"

    const-string v1, "com.samsung.android.server.iris"

    iget-object v2, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAcquiredString, Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    :goto_0
    if-nez v2, :cond_0

    const-string p1, "mRes is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    const/4 v4, 0x3

    const-string/jumbo v5, "string"

    if-eq p1, v4, :cond_5

    const/4 v4, 0x4

    if-eq p1, v4, :cond_4

    const/16 v4, 0x9

    if-eq p1, v4, :cond_3

    const/16 v4, 0xb

    if-eq p1, v4, :cond_2

    const/16 v4, 0xc

    if-eq p1, v4, :cond_1

    return-object v3

    :cond_1
    :try_start_1
    const-string p1, "iris_acquired_change_your_position"

    invoke-virtual {v2, p1, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "iris_acquired_move_somewhere_darker"

    invoke-virtual {v2, p1, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "iris_acquired_open_wider"

    invoke-virtual {v2, p1, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "iris_acquired_move_farther"

    invoke-virtual {v2, p1, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, "iris_acquired_move_closer"

    invoke-virtual {v2, p1, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAcquiredString, NotFoundException = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private getCurrentUserId()I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "SIrisManager"

    const-string v1, "Failed to get current user id\n"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x2710

    return v0
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 7

    const-string v0, "SIrisManager"

    const-string v1, "com.samsung.android.server.iris"

    iget-object v2, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getErrorString, Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    :goto_0
    if-nez v2, :cond_0

    const-string p1, "mRes is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    const-string v4, ""

    const-string v5, "iris_error_unable_to_process"

    const-string/jumbo v6, "string"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    :try_start_1
    const-string p1, "iris_error_need_set_lock_type"

    invoke-virtual {v2, p1, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-string p1, "iris_error_flip_off"

    invoke-virtual {v2, p1, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    const-string p1, "iris_error_no_eye_detected"

    invoke-virtual {v2, p1, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-string p1, "iris_error_video_call_interrupt"

    invoke-virtual {v2, p1, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    const-string p1, "iris_error_evicted"

    invoke-virtual {v2, p1, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    const-string p1, "iris_error_proximity_timeout"

    invoke-virtual {v2, p1, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    const-string p1, "iris_error_auth_view_size"

    invoke-virtual {v2, p1, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    const-string p1, "iris_error_eye_safety_timeout"

    invoke-virtual {v2, p1, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_9
    return-object v4

    :pswitch_a
    const-string p1, "iris_error_lockout"

    invoke-virtual {v2, p1, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_b
    const-string p1, "iris_error_canceled"

    invoke-virtual {v2, p1, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_c
    const-string p1, "iris_error_timeout"

    invoke-virtual {v2, p1, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {v2, v5, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_e
    const-string p1, "iris_error_sensor_no_response"

    invoke-virtual {v2, p1, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_1
    invoke-virtual {v2, v5, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getErrorString, NotFoundException = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized getSIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/sdk/iris/SIrisManager;
    .locals 3

    const-class v0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.camera.iris"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mSIrisManager:Lcom/samsung/android/camera/sdk/iris/SIrisManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/camera/sdk/iris/SIrisManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mSIrisManager:Lcom/samsung/android/camera/sdk/iris/SIrisManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mSIrisManager:Lcom/samsung/android/camera/sdk/iris/SIrisManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private requestGetUniqueID(ILjava/lang/String;)[B
    .locals 11

    invoke-direct {p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object v6, v0

    move v7, p1

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/camera/iris/IIrisService;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I

    move-result v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SIrisManager"

    const-string p2, "Remote exception in request()"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-gtz v10, :cond_2

    return-object v1

    :cond_2
    invoke-static {v0, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1
.end method

.method private startIrisService()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.server.iris"

    const-string v3, "com.samsung.android.server.iris.IrisService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting startIrisService failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIrisManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/samsung/android/camera/sdk/iris/SIrisManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/sdk/iris/SIrisManager;Landroid/os/Looper;Lcom/samsung/android/camera/sdk/iris/SIrisManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq p1, v1, :cond_1

    new-instance p1, Lcom/samsung/android/camera/sdk/iris/SIrisManager$MyHandler;

    iget-object v1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/sdk/iris/SIrisManager;Landroid/os/Looper;Lcom/samsung/android/camera/sdk/iris/SIrisManager$1;)V

    iput-object p1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mHandler:Landroid/os/Handler;

    :cond_1
    :goto_0
    return-void
.end method

.method private waitForService()V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    const-string v1, "samsung.iris"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    const-string v0, "SIrisManager"

    const-string v1, "Service connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public authenticate(Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->authenticate(Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method public enableIRImageCallback(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->enableIRImageCallback(ILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->enableIRImageCallback(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SIrisManager"

    const-string v0, "Remote exception in enableIRImageCallback"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public getEnrolledIrisUniqueID()Landroid/util/SparseArray;
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "SIrisManager"

    const-string v3, "Remote exception in getEnrolledIrises"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/iris/Iris;

    invoke-virtual {v4}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->requestGetUniqueID(ILjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/2addr v3, v2

    goto :goto_1

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public getMinimumIrisViewSize()Landroid/util/Size;
    .locals 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const v3, 0x3fe38e39

    if-ge v2, v0, :cond_0

    div-int/2addr v2, v1

    goto :goto_0

    :cond_0
    div-int v2, v0, v1

    :goto_0
    int-to-float v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    new-instance v3, Landroid/util/Size;

    mul-int/2addr v2, v1

    mul-int/2addr v0, v1

    invoke-direct {v3, v2, v0}, Landroid/util/Size;-><init>(II)V

    return-object v3
.end method

.method public hasDisabledIrises()Z
    .locals 7

    const-string v0, "SIrisManager"

    invoke-direct {p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->ensureServiceConnected()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "com.samsung.android.camera.iris.IIrisService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "hasDisabledIrises"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->hasDisabledIrises(ILjava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return v0

    :catch_0
    :try_start_3
    const-string v1, "No Such Method of checking disabled irises"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    return v2

    :catch_1
    :try_start_4
    const-string v1, "Class not founded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    return v2

    :catch_2
    const-string v1, "Remote exception in getEnrolledFaces"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method

.method public hasEnrolledIrises()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->hasEnrolledIrises(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "SIrisManager"

    const-string v2, "Remote exception in getEnrolledIrises"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public isHardwareDetected()Z
    .locals 2

    const-string v0, "SIrisManager"

    const-string v1, "isIrisHardwareDetected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.camera.iris"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setIrisViewType(I)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/camera/iris/IIrisService;->setIrisViewType(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SIrisManager"

    const-string v0, "Remote exception in setIrisViewType"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
