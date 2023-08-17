.class public Lcom/samsung/android/app/notes/sync/synchronization/managers/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/samsung/android/app/notes/sync/synchronization/managers/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/samsung/android/app/notes/sync/synchronization/managers/e;
    .locals 2

    const-class v0, Lcom/samsung/android/app/notes/sync/synchronization/managers/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/e;->a:Lcom/samsung/android/app/notes/sync/synchronization/managers/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/e;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/e;-><init>()V

    sput-object v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/e;->a:Lcom/samsung/android/app/notes/sync/synchronization/managers/e;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/e;->a:Lcom/samsung/android/app/notes/sync/synchronization/managers/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 p1, 0x259

    return p1

    :pswitch_1
    const/16 p1, 0x265

    return p1

    :pswitch_2
    const/16 p1, 0x264

    return p1

    :pswitch_3
    const/16 p1, 0x263

    return p1

    :pswitch_4
    const/16 p1, 0x261

    return p1

    :pswitch_5
    const/16 p1, 0x262

    return p1

    :pswitch_6
    const/16 p1, 0x260

    return p1

    :pswitch_7
    const/16 p1, 0x25e

    return p1

    :pswitch_8
    const/16 p1, 0x25d

    return p1

    :pswitch_9
    const/16 p1, 0x25c

    return p1

    :pswitch_a
    const/16 p1, 0x25a

    return p1

    :pswitch_b
    const/16 p1, 0x258

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public c(II)Z
    .locals 2

    const/16 v0, 0x68

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x69

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x100

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_2

    return v1

    :cond_1
    const/16 p1, 0x40

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_2

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
