.class public Ls/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;)I
    .locals 1

    sget-object v0, Ls/i$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x800

    return p0

    :pswitch_0
    const/16 p0, 0x1000

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/16 p0, 0x10

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/16 p0, 0x200

    return p0

    :pswitch_6
    const/16 p0, 0x100

    return p0

    :pswitch_7
    const/16 p0, 0x40

    return p0

    :pswitch_8
    const/16 p0, 0x80

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;",
            ")",
            "Ljava/util/ArrayList<",
            "Ly1/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Ls/i;->a(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;)I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v1, :cond_8

    const/4 v1, 0x4

    if-eq p0, v1, :cond_7

    const/16 v1, 0x8

    if-eq p0, v1, :cond_6

    const/16 v1, 0x10

    if-eq p0, v1, :cond_5

    const/16 v1, 0x40

    if-eq p0, v1, :cond_4

    const/16 v1, 0x80

    if-eq p0, v1, :cond_3

    const/16 v1, 0x100

    const-string v3, "Fail to share!"

    if-eq p0, v1, :cond_2

    const/16 v1, 0x200

    if-eq p0, v1, :cond_2

    const/16 v1, 0x400

    if-eq p0, v1, :cond_1

    const/16 v1, 0x1000

    if-eq p0, v1, :cond_0

    new-instance p0, Ls/k;

    const-string v1, "Unknown share error!"

    invoke-direct {p0, v1, v2}, Ls/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ls/l;

    const-string v1, "Wifi Only Error!"

    invoke-direct {p0, v1, v2}, Ls/l;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ls/b;

    invoke-direct {p0, v3, v2}, Ls/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ls/b;

    invoke-direct {p0, v3, v2}, Ls/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance p0, Ls/h;

    const-string v1, "Session error!"

    invoke-direct {p0, v1, v2}, Ls/h;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance p0, Ls/d;

    const-string v1, "Auth Error!"

    invoke-direct {p0, v1, v2}, Ls/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    new-instance p0, Ls/a;

    const-string v1, "Device storage is full!"

    invoke-direct {p0, v1, v2}, Ls/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    new-instance p0, Ls/g;

    const-string v1, "Server Error!"

    invoke-direct {p0, v1, v2}, Ls/g;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    new-instance p0, Ls/c;

    const-string v1, "Network Error!"

    invoke-direct {p0, v1, v2}, Ls/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    new-instance p0, Ls/e;

    const-string v1, "Not Enough Cloud Storage!"

    invoke-direct {p0, v1, v2}, Ls/e;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
