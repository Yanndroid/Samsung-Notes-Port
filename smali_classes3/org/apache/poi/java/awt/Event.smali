.class public Lorg/apache/poi/java/awt/Event;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ACTION_EVENT:I = 0x3e9

.field public static final ALT_MASK:I = 0x8

.field public static final BACK_SPACE:I = 0x8

.field public static final CAPS_LOCK:I = 0x3fe

.field public static final CTRL_MASK:I = 0x2

.field public static final DELETE:I = 0x7f

.field public static final DOWN:I = 0x3ed

.field public static final END:I = 0x3e9

.field public static final ENTER:I = 0xa

.field public static final ESCAPE:I = 0x1b

.field public static final F1:I = 0x3f0

.field public static final F10:I = 0x3f9

.field public static final F11:I = 0x3fa

.field public static final F12:I = 0x3fb

.field public static final F2:I = 0x3f1

.field public static final F3:I = 0x3f2

.field public static final F4:I = 0x3f3

.field public static final F5:I = 0x3f4

.field public static final F6:I = 0x3f5

.field public static final F7:I = 0x3f6

.field public static final F8:I = 0x3f7

.field public static final F9:I = 0x3f8

.field public static final GOT_FOCUS:I = 0x3ec

.field public static final HOME:I = 0x3e8

.field public static final INSERT:I = 0x401

.field public static final KEY_ACTION:I = 0x193

.field public static final KEY_ACTION_RELEASE:I = 0x194

.field private static final KEY_EVENT:I = 0x190

.field public static final KEY_PRESS:I = 0x191

.field public static final KEY_RELEASE:I = 0x192

.field public static final LEFT:I = 0x3ee

.field public static final LIST_DESELECT:I = 0x2be

.field private static final LIST_EVENT:I = 0x2bc

.field public static final LIST_SELECT:I = 0x2bd

.field public static final LOAD_FILE:I = 0x3ea

.field public static final LOST_FOCUS:I = 0x3ed

.field public static final META_MASK:I = 0x4

.field private static final MISC_EVENT:I = 0x3e8

.field public static final MOUSE_DOWN:I = 0x1f5

.field public static final MOUSE_DRAG:I = 0x1fa

.field public static final MOUSE_ENTER:I = 0x1f8

.field private static final MOUSE_EVENT:I = 0x1f4

.field public static final MOUSE_EXIT:I = 0x1f9

.field public static final MOUSE_MOVE:I = 0x1f7

.field public static final MOUSE_UP:I = 0x1f6

.field public static final NUM_LOCK:I = 0x3ff

.field public static final PAUSE:I = 0x400

.field public static final PGDN:I = 0x3eb

.field public static final PGUP:I = 0x3ea

.field public static final PRINT_SCREEN:I = 0x3fc

.field public static final RIGHT:I = 0x3ef

.field public static final SAVE_FILE:I = 0x3eb

.field public static final SCROLL_ABSOLUTE:I = 0x25d

.field public static final SCROLL_BEGIN:I = 0x25e

.field public static final SCROLL_END:I = 0x25f

.field private static final SCROLL_EVENT:I = 0x258

.field public static final SCROLL_LINE_DOWN:I = 0x25a

.field public static final SCROLL_LINE_UP:I = 0x259

.field public static final SCROLL_LOCK:I = 0x3fd

.field public static final SCROLL_PAGE_DOWN:I = 0x25c

.field public static final SCROLL_PAGE_UP:I = 0x25b

.field public static final SHIFT_MASK:I = 0x1

.field public static final TAB:I = 0x9

.field public static final UP:I = 0x3ec

.field public static final WINDOW_DEICONIFY:I = 0xcc

.field public static final WINDOW_DESTROY:I = 0xc9

.field private static final WINDOW_EVENT:I = 0xc8

.field public static final WINDOW_EXPOSE:I = 0xca

.field public static final WINDOW_ICONIFY:I = 0xcb

.field public static final WINDOW_MOVED:I = 0xcd

.field private static final actionKeyCodes:[[I

.field private static final serialVersionUID:J = 0x4c2c91f0d476797fL


# instance fields
.field public arg:Ljava/lang/Object;

.field public clickCount:I

.field private consumed:Z

.field private transient data:J

.field public evt:Lorg/apache/poi/java/awt/Event;

.field public id:I

.field public key:I

.field public modifiers:I

.field public target:Ljava/lang/Object;

.field public when:J

.field public x:I

.field public y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1a

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_15

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_16

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_17

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_18

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_19

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/java/awt/Event;->actionKeyCodes:[[I

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Event;->initIDs()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x24
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x23
        0x3e9
    .end array-data

    :array_2
    .array-data 4
        0x21
        0x3ea
    .end array-data

    :array_3
    .array-data 4
        0x22
        0x3eb
    .end array-data

    :array_4
    .array-data 4
        0x26
        0x3ec
    .end array-data

    :array_5
    .array-data 4
        0x28
        0x3ed
    .end array-data

    :array_6
    .array-data 4
        0x25
        0x3ee
    .end array-data

    :array_7
    .array-data 4
        0x27
        0x3ef
    .end array-data

    :array_8
    .array-data 4
        0x70
        0x3f0
    .end array-data

    :array_9
    .array-data 4
        0x71
        0x3f1
    .end array-data

    :array_a
    .array-data 4
        0x72
        0x3f2
    .end array-data

    :array_b
    .array-data 4
        0x73
        0x3f3
    .end array-data

    :array_c
    .array-data 4
        0x74
        0x3f4
    .end array-data

    :array_d
    .array-data 4
        0x75
        0x3f5
    .end array-data

    :array_e
    .array-data 4
        0x76
        0x3f6
    .end array-data

    :array_f
    .array-data 4
        0x77
        0x3f7
    .end array-data

    :array_10
    .array-data 4
        0x78
        0x3f8
    .end array-data

    :array_11
    .array-data 4
        0x79
        0x3f9
    .end array-data

    :array_12
    .array-data 4
        0x7a
        0x3fa
    .end array-data

    :array_13
    .array-data 4
        0x7b
        0x3fb
    .end array-data

    :array_14
    .array-data 4
        0x9a
        0x3fc
    .end array-data

    :array_15
    .array-data 4
        0x91
        0x3fd
    .end array-data

    :array_16
    .array-data 4
        0x14
        0x3fe
    .end array-data

    :array_17
    .array-data 4
        0x90
        0x3ff
    .end array-data

    :array_18
    .array-data 4
        0x13
        0x400
    .end array-data

    :array_19
    .array-data 4
        0x9b
        0x401
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lorg/apache/poi/java/awt/Event;-><init>(Ljava/lang/Object;JIIIIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JIIIII)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/apache/poi/java/awt/Event;-><init>(Ljava/lang/Object;JIIIIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JIIIIILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Event;->consumed:Z

    iput-object p1, p0, Lorg/apache/poi/java/awt/Event;->target:Ljava/lang/Object;

    iput-wide p2, p0, Lorg/apache/poi/java/awt/Event;->when:J

    iput p4, p0, Lorg/apache/poi/java/awt/Event;->id:I

    iput p5, p0, Lorg/apache/poi/java/awt/Event;->x:I

    iput p6, p0, Lorg/apache/poi/java/awt/Event;->y:I

    iput p7, p0, Lorg/apache/poi/java/awt/Event;->key:I

    iput p8, p0, Lorg/apache/poi/java/awt/Event;->modifiers:I

    iput-object p9, p0, Lorg/apache/poi/java/awt/Event;->arg:Ljava/lang/Object;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/apache/poi/java/awt/Event;->data:J

    iput v0, p0, Lorg/apache/poi/java/awt/Event;->clickCount:I

    const/16 p1, 0xc9

    if-eq p4, p1, :cond_0

    const/16 p1, 0x3e9

    if-eq p4, p1, :cond_0

    const/16 p1, 0x2bd

    if-eq p4, p1, :cond_0

    const/16 p1, 0x2be

    if-eq p4, p1, :cond_0

    packed-switch p4, :pswitch_data_0

    packed-switch p4, :pswitch_data_1

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Event;->consumed:Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x259
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getOldEventKey(Lorg/apache/poi/java/awt/event/KeyEvent;)I
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lorg/apache/poi/java/awt/Event;->actionKeyCodes:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v4, v3, v2

    aget v4, v4, v1

    if-ne v4, v0, :cond_0

    aget-object p0, v3, v2

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/event/KeyEvent;->getKeyChar()C

    move-result p0

    return p0
.end method

.method private static native initIDs()V
.end method


# virtual methods
.method public consume()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Event;->id:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Event;->consumed:Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public controlDown()Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Event;->modifiers:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getKeyEventChar()C
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/poi/java/awt/Event;->actionKeyCodes:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lorg/apache/poi/java/awt/Event;->key:I

    if-ne v1, v2, :cond_0

    const v0, 0xffff

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/apache/poi/java/awt/Event;->key:I

    int-to-char v0, v0

    return v0
.end method

.method public isConsumed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Event;->consumed:Z

    return v0
.end method

.method public metaDown()Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Event;->modifiers:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public paramString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/Event;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/Event;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/Event;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/java/awt/Event;->key:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",key="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/poi/java/awt/Event;->key:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Event;->shiftDown()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",shift"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Event;->controlDown()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",control"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Event;->metaDown()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",meta"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/java/awt/Event;->target:Ljava/lang/Object;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",target="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/poi/java/awt/Event;->target:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lorg/apache/poi/java/awt/Event;->arg:Ljava/lang/Object;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",arg="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/poi/java/awt/Event;->arg:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public shiftDown()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/Event;->modifiers:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Event;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(II)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Event;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/java/awt/Event;->x:I

    iget p1, p0, Lorg/apache/poi/java/awt/Event;->y:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/poi/java/awt/Event;->y:I

    return-void
.end method
