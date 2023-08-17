.class public Lp0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Lp0/b;
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createObjectParagraph - type ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] is invalid type"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WDocTextStyleFactory"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lp0/n;

    invoke-direct {p0}, Lp0/n;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocLineSpacingParagraph;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocLineSpacingParagraph;-><init>()V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;-><init>()V

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static b(I)Lp0/d;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/16 v0, 0x9

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createObjectSPan - type ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] is invalid type"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WDocTextStyleFactory"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    new-instance p0, Lp0/o;

    invoke-direct {p0}, Lp0/o;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance p0, Lp0/q;

    invoke-direct {p0}, Lp0/q;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance p0, Lp0/i;

    invoke-direct {p0}, Lp0/i;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance p0, Lp0/e;

    invoke-direct {p0}, Lp0/e;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance p0, Lp0/h;

    invoke-direct {p0}, Lp0/h;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance p0, Lp0/g;

    invoke-direct {p0}, Lp0/g;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocUnderlineSpan;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocUnderlineSpan;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lp0/m;

    invoke-direct {p0}, Lp0/m;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p0, Lp0/f;

    invoke-direct {p0}, Lp0/f;-><init>()V

    goto :goto_0

    :cond_3
    new-instance p0, Lp0/j;

    invoke-direct {p0}, Lp0/j;-><init>()V

    goto :goto_0

    :cond_4
    new-instance p0, Lp0/k;

    invoke-direct {p0}, Lp0/k;-><init>()V

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;-><init>()V

    goto :goto_0

    :cond_6
    new-instance p0, Lp0/l;

    invoke-direct {p0}, Lp0/l;-><init>()V

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
