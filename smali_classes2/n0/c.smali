.class public Ln0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILk0/b;)Ln0/a;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WRONG OBJECT TYPE : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WDocObjectFactory"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_1
    new-instance p0, Ln0/g;

    invoke-direct {p0, p1}, Ln0/g;-><init>(Lk0/b;)V

    goto :goto_0

    :pswitch_2
    new-instance p0, Ln0/h;

    invoke-direct {p0, p1}, Ln0/h;-><init>(Lk0/b;)V

    goto :goto_0

    :pswitch_3
    new-instance p0, Ln0/o;

    invoke-direct {p0, p1}, Ln0/o;-><init>(Lk0/b;)V

    goto :goto_0

    :pswitch_4
    new-instance p0, Ln0/d;

    invoke-direct {p0, p1}, Ln0/d;-><init>(Lk0/b;)V

    goto :goto_0

    :pswitch_5
    new-instance p0, Ln0/n;

    invoke-direct {p0, p1}, Ln0/n;-><init>(Lk0/b;)V

    goto :goto_0

    :pswitch_6
    new-instance p0, Ln0/f;

    invoke-direct {p0, p1}, Ln0/f;-><init>(Lk0/b;)V

    goto :goto_0

    :pswitch_7
    new-instance p0, Ln0/i;

    invoke-direct {p0, p1}, Ln0/i;-><init>(Lk0/b;)V

    goto :goto_0

    :pswitch_8
    new-instance p0, Ln0/e;

    invoke-direct {p0, p1}, Ln0/e;-><init>(Lk0/b;)V

    goto :goto_0

    :pswitch_9
    new-instance p0, Ln0/m;

    invoke-direct {p0, p1}, Ln0/m;-><init>(Lk0/b;)V

    goto :goto_0

    :pswitch_a
    new-instance p0, Ln0/k;

    invoke-direct {p0, p1}, Ln0/k;-><init>(Lk0/b;)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;Lk0/b;)Ln0/a;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "stroke"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Ln0/k;

    invoke-direct {p0, p1}, Ln0/k;-><init>(Lk0/b;)V

    return-object p0

    :cond_1
    const-string/jumbo v1, "textBox"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p0, Ln0/m;

    invoke-direct {p0, p1}, Ln0/m;-><init>(Lk0/b;)V

    return-object p0

    :cond_2
    const-string v1, "image"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p0, Ln0/e;

    invoke-direct {p0, p1}, Ln0/e;-><init>(Lk0/b;)V

    return-object p0

    :cond_3
    const-string v1, "container"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p0, Ln0/b;

    invoke-direct {p0, p1}, Ln0/b;-><init>(Lk0/b;)V

    return-object p0

    :cond_4
    const-string v1, "shape"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p0, Ln0/i;

    invoke-direct {p0, p1}, Ln0/i;-><init>(Lk0/b;)V

    return-object p0

    :cond_5
    const-string v1, "line"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p0, Ln0/f;

    invoke-direct {p0, p1}, Ln0/f;-><init>(Lk0/b;)V

    return-object p0

    :cond_6
    const-string/jumbo v1, "voice"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p0, Ln0/n;

    invoke-direct {p0, p1}, Ln0/n;-><init>(Lk0/b;)V

    return-object p0

    :cond_7
    const-string v1, "formula"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance p0, Ln0/d;

    invoke-direct {p0, p1}, Ln0/d;-><init>(Lk0/b;)V

    return-object p0

    :cond_8
    const-string v1, "table"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance p0, Ln0/l;

    invoke-direct {p0, p1}, Ln0/l;-><init>(Lk0/b;)V

    return-object p0

    :cond_9
    const-string/jumbo v1, "web"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance p0, Ln0/o;

    invoke-direct {p0, p1}, Ln0/o;-><init>(Lk0/b;)V

    return-object p0

    :cond_a
    const-string v1, "painting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance p0, Ln0/h;

    invoke-direct {p0, p1}, Ln0/h;-><init>(Lk0/b;)V

    return-object p0

    :cond_b
    const-string v1, "link"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance p0, Ln0/g;

    invoke-direct {p0, p1}, Ln0/g;-><init>(Lk0/b;)V

    return-object p0

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createObject - type = ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is invalid type."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WDocObjectFactory"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
