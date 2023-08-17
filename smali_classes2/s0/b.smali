.class public Ls0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)Lt0/i;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No matched Sync error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyncErrorManager"

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lw0/a0;

    invoke-direct {p0}, Lw0/a0;-><init>()V

    goto/16 :goto_0

    :sswitch_0
    new-instance p0, Lw0/f;

    invoke-direct {p0}, Lw0/f;-><init>()V

    goto/16 :goto_0

    :sswitch_1
    new-instance p0, Lw0/n;

    invoke-direct {p0}, Lw0/n;-><init>()V

    goto/16 :goto_0

    :sswitch_2
    new-instance p0, Lw0/m;

    invoke-direct {p0}, Lw0/m;-><init>()V

    goto/16 :goto_0

    :sswitch_3
    new-instance p0, Lw0/g;

    invoke-direct {p0, p1}, Lw0/g;-><init>(I)V

    goto/16 :goto_0

    :sswitch_4
    new-instance p0, Lw0/h;

    invoke-direct {p0}, Lw0/h;-><init>()V

    goto/16 :goto_0

    :sswitch_5
    new-instance p0, Lw0/d;

    invoke-direct {p0}, Lw0/d;-><init>()V

    goto/16 :goto_0

    :sswitch_6
    new-instance p0, Lw0/i;

    invoke-direct {p0}, Lw0/i;-><init>()V

    goto/16 :goto_0

    :sswitch_7
    new-instance p0, Lw0/e;

    invoke-direct {p0}, Lw0/e;-><init>()V

    goto/16 :goto_0

    :sswitch_8
    new-instance p0, Lw0/v;

    invoke-direct {p0}, Lw0/v;-><init>()V

    goto/16 :goto_0

    :sswitch_9
    new-instance p0, Lw0/b;

    invoke-direct {p0}, Lw0/b;-><init>()V

    goto/16 :goto_0

    :sswitch_a
    new-instance p0, Lw0/j;

    invoke-direct {p0}, Lw0/j;-><init>()V

    goto/16 :goto_0

    :sswitch_b
    new-instance p0, Lw0/w;

    invoke-direct {p0}, Lw0/w;-><init>()V

    goto :goto_0

    :sswitch_c
    new-instance p0, Lw0/b0;

    invoke-direct {p0}, Lw0/b0;-><init>()V

    goto :goto_0

    :sswitch_d
    new-instance p0, Lw0/k;

    invoke-direct {p0}, Lw0/k;-><init>()V

    goto :goto_0

    :sswitch_e
    new-instance p0, Lw0/c;

    invoke-direct {p0}, Lw0/c;-><init>()V

    goto :goto_0

    :sswitch_f
    new-instance p0, Lw0/y;

    invoke-direct {p0}, Lw0/y;-><init>()V

    goto :goto_0

    :sswitch_10
    new-instance p0, Lw0/s;

    invoke-direct {p0}, Lw0/s;-><init>()V

    goto :goto_0

    :sswitch_11
    new-instance p0, Lw0/x;

    invoke-direct {p0}, Lw0/x;-><init>()V

    goto :goto_0

    :sswitch_12
    new-instance p0, Lw0/o;

    invoke-direct {p0}, Lw0/o;-><init>()V

    goto :goto_0

    :sswitch_13
    new-instance p0, Lw0/r;

    invoke-direct {p0}, Lw0/r;-><init>()V

    goto :goto_0

    :sswitch_14
    new-instance p0, Lw0/c0;

    invoke-direct {p0, p1}, Lw0/c0;-><init>(I)V

    goto :goto_0

    :sswitch_15
    new-instance p0, Lw0/u;

    invoke-direct {p0}, Lw0/u;-><init>()V

    goto :goto_0

    :sswitch_16
    new-instance p0, Lw0/z;

    invoke-direct {p0}, Lw0/z;-><init>()V

    goto :goto_0

    :sswitch_17
    new-instance p0, Lw0/l;

    invoke-direct {p0}, Lw0/l;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lw0/t;

    invoke-direct {p0}, Lw0/t;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lw0/p;

    invoke-direct {p0}, Lw0/p;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p0, Lw0/a0;

    invoke-direct {p0}, Lw0/a0;-><init>()V

    :goto_0
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_17
        0x8 -> :sswitch_16
        0x10 -> :sswitch_15
        0x20 -> :sswitch_14
        0x40 -> :sswitch_13
        0x80 -> :sswitch_12
        0x100 -> :sswitch_11
        0x200 -> :sswitch_10
        0x400 -> :sswitch_f
        0x800 -> :sswitch_e
        0x1000 -> :sswitch_d
        0x2000 -> :sswitch_c
        0x4000 -> :sswitch_b
        0x8000 -> :sswitch_a
        0x10000 -> :sswitch_9
        0x20000 -> :sswitch_8
        0x40000 -> :sswitch_7
        0x80000 -> :sswitch_6
        0x100000 -> :sswitch_5
        0x200000 -> :sswitch_4
        0x400000 -> :sswitch_3
        0x800000 -> :sswitch_2
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static b(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)Lt0/i;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No matched TipCard error : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyncErrorManager"

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_0
    new-instance p0, Lw0/q;

    invoke-direct {p0}, Lw0/q;-><init>()V

    goto :goto_1

    :sswitch_1
    new-instance p0, Lw0/u;

    invoke-direct {p0}, Lw0/u;-><init>()V

    goto :goto_1

    :sswitch_2
    new-instance p0, Lw0/t;

    invoke-direct {p0}, Lw0/t;-><init>()V

    goto :goto_1

    :sswitch_3
    new-instance p0, Lw0/y;

    invoke-direct {p0}, Lw0/y;-><init>()V

    goto :goto_1

    :sswitch_4
    new-instance p0, Lw0/r;

    invoke-direct {p0}, Lw0/r;-><init>()V

    goto :goto_1

    :sswitch_5
    new-instance p0, Lw0/l;

    invoke-direct {p0}, Lw0/l;-><init>()V

    goto :goto_1

    :sswitch_6
    new-instance p0, Lw0/z;

    invoke-direct {p0}, Lw0/z;-><init>()V

    goto :goto_1

    :sswitch_7
    new-instance p0, Lw0/p;

    invoke-direct {p0}, Lw0/p;-><init>()V

    goto :goto_1

    :sswitch_8
    new-instance p1, Lv0/b;

    invoke-direct {p1, p0}, Lv0/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    goto :goto_0

    :sswitch_9
    new-instance p1, Lv0/c;

    invoke-direct {p1, p0}, Lv0/c;-><init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    goto :goto_0

    :sswitch_a
    new-instance p1, Lv0/d;

    invoke-direct {p1, p0}, Lv0/d;-><init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    :goto_0
    move-object p0, p1

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_a
        0x4 -> :sswitch_9
        0x8 -> :sswitch_8
        0x10 -> :sswitch_7
        0x20 -> :sswitch_6
        0x40 -> :sswitch_5
        0x80 -> :sswitch_4
        0x100 -> :sswitch_3
        0x200 -> :sswitch_2
        0x400 -> :sswitch_1
        0x800 -> :sswitch_0
    .end sparse-switch
.end method

.method public static c(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V
    .locals 3

    new-instance v0, Ls0/c;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13b

    invoke-direct {v0, v2, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result p0

    invoke-virtual {v0, p0}, Ls0/c;->g(I)V

    throw v0
.end method
