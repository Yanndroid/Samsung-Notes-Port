.class abstract Lorg/apache/poi/java/awt/ModalEventFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/EventFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/ModalEventFilter$ApplicationModalEventFilter;,
        Lorg/apache/poi/java/awt/ModalEventFilter$DocumentModalEventFilter;,
        Lorg/apache/poi/java/awt/ModalEventFilter$ToolkitModalEventFilter;
    }
.end annotation


# instance fields
.field public disabled:Z

.field public modalDialog:Lorg/apache/poi/java/awt/Dialog;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/ModalEventFilter;->modalDialog:Lorg/apache/poi/java/awt/Dialog;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/ModalEventFilter;->disabled:Z

    return-void
.end method

.method public static createFilterForDialog(Lorg/apache/poi/java/awt/Dialog;)Lorg/apache/poi/java/awt/ModalEventFilter;
    .locals 2

    sget-object v0, Lorg/apache/poi/java/awt/ModalEventFilter$1;->$SwitchMap$java$awt$Dialog$ModalityType:[I

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog;->getModalityType()Lorg/apache/poi/java/awt/Dialog$ModalityType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/ModalEventFilter$ToolkitModalEventFilter;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/ModalEventFilter$ToolkitModalEventFilter;-><init>(Lorg/apache/poi/java/awt/Dialog;)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/poi/java/awt/ModalEventFilter$ApplicationModalEventFilter;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/ModalEventFilter$ApplicationModalEventFilter;-><init>(Lorg/apache/poi/java/awt/Dialog;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/poi/java/awt/ModalEventFilter$DocumentModalEventFilter;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/ModalEventFilter$DocumentModalEventFilter;-><init>(Lorg/apache/poi/java/awt/Dialog;)V

    return-object v0
.end method


# virtual methods
.method public acceptEvent(Lorg/apache/poi/java/awt/AWTEvent;)Lorg/apache/poi/java/awt/EventFilter$FilterAction;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/ModalEventFilter;->disabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/poi/java/awt/ModalEventFilter;->modalDialog:Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1fb

    if-le v0, v1, :cond_3

    :cond_1
    const/16 v1, 0x3e9

    if-lt v0, v1, :cond_2

    if-le v0, v1, :cond_3

    :cond_2
    const/16 v1, 0xc9

    if-ne v0, v1, :cond_6

    :cond_3
    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/poi/sun/awt/ModalExclude;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    instance-of v0, p1, Lorg/apache/poi/java/awt/Component;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/apache/poi/java/awt/Component;

    :goto_0
    if-eqz p1, :cond_5

    instance-of v0, p1, Lorg/apache/poi/java/awt/Window;

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getParent_NoClientCode()Lorg/apache/poi/java/awt/Container;

    move-result-object p1

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    check-cast p1, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/ModalEventFilter;->acceptWindow(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/EventFilter$FilterAction;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    sget-object p1, Lorg/apache/poi/java/awt/EventFilter$FilterAction;->ACCEPT:Lorg/apache/poi/java/awt/EventFilter$FilterAction;

    return-object p1

    :cond_7
    :goto_2
    sget-object p1, Lorg/apache/poi/java/awt/EventFilter$FilterAction;->ACCEPT:Lorg/apache/poi/java/awt/EventFilter$FilterAction;

    return-object p1
.end method

.method public abstract acceptWindow(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/EventFilter$FilterAction;
.end method

.method public compareTo(Lorg/apache/poi/java/awt/ModalEventFilter;)I
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/ModalEventFilter;->getModalDialog()Lorg/apache/poi/java/awt/Dialog;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/java/awt/ModalEventFilter;->modalDialog:Lorg/apache/poi/java/awt/Dialog;

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getParent_NoClientCode()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_1
    const/4 v2, -0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lorg/apache/poi/java/awt/ModalEventFilter;->modalDialog:Lorg/apache/poi/java/awt/Dialog;

    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getParent_NoClientCode()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/java/awt/ModalEventFilter;->modalDialog:Lorg/apache/poi/java/awt/Dialog;

    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Window;->getModalBlocker()Lorg/apache/poi/java/awt/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    if-ne v0, p1, :cond_4

    return v2

    :cond_5
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->getModalBlocker()Lorg/apache/poi/java/awt/Dialog;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_7

    iget-object v2, p0, Lorg/apache/poi/java/awt/ModalEventFilter;->modalDialog:Lorg/apache/poi/java/awt/Dialog;

    if-ne v0, v2, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Window;->getModalBlocker()Lorg/apache/poi/java/awt/Dialog;

    move-result-object v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/apache/poi/java/awt/ModalEventFilter;->modalDialog:Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Dialog;->getModalityType()Lorg/apache/poi/java/awt/Dialog$ModalityType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Dialog;->getModalityType()Lorg/apache/poi/java/awt/Dialog$ModalityType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public disable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/ModalEventFilter;->disabled:Z

    return-void
.end method

.method public getModalDialog()Lorg/apache/poi/java/awt/Dialog;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/ModalEventFilter;->modalDialog:Lorg/apache/poi/java/awt/Dialog;

    return-object v0
.end method
