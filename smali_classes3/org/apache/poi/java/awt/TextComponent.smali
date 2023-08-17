.class public Lorg/apache/poi/java/awt/TextComponent;
.super Lorg/apache/poi/java/awt/Component;
.source "SourceFile"

# interfaces
.implements Ljavax/accessibility/Accessible;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1ebc751a42fe101bL


# instance fields
.field public backgroundSetByClientCode:Z

.field private checkForEnableIM:Z

.field public editable:Z

.field public selectionEnd:I

.field public selectionStart:I

.field public text:Ljava/lang/String;

.field private textComponentSerializedDataVersion:I

.field public transient textListener:Lorg/apache/poi/java/awt/event/TextListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/TextComponent;->editable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/TextComponent;->backgroundSetByClientCode:Z

    iput v0, p0, Lorg/apache/poi/java/awt/TextComponent;->textComponentSerializedDataVersion:I

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/TextComponent;->checkForEnableIM:Z

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-static {p1}, Lorg/apache/poi/java/awt/Cursor;->getPredefinedCursor(I)Lorg/apache/poi/java/awt/Cursor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->setCursor(Lorg/apache/poi/java/awt/Cursor;)V

    return-void
.end method

.method private canAccessClipboard()Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSystemClipboardAccess()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private enableInputMethodsIfNecessary()V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/TextComponent;->checkForEnableIM:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/TextComponent;->checkForEnableIM:Z

    :try_start_0
    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    instance-of v2, v1, Lorg/apache/poi/sun/awt/InputMethodSupport;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/sun/awt/InputMethodSupport;

    invoke-interface {v1}, Lorg/apache/poi/sun/awt/InputMethodSupport;->enableInputMethodsForTextComponent()Z

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/TextComponent;->enableInputMethods(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;

    iget v0, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionStart:I

    iget v1, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionEnd:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/java/awt/TextComponent;->select(II)V

    :goto_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "textL"

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/TextListener;

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/event/TextListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/TextComponent;->addTextListener(Lorg/apache/poi/java/awt/event/TextListener;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/java/awt/TextComponent;->enableInputMethodsIfNecessary()V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/TextComponentPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->getSelectionStart()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionStart:I

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionEnd:I

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent;->textListener:Lorg/apache/poi/java/awt/event/TextListener;

    const-string/jumbo v1, "textL"

    invoke-static {p1, v1, v0}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addNotify()V
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->addNotify()V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/TextComponent;->enableInputMethodsIfNecessary()V

    return-void
.end method

.method public declared-synchronized addTextListener(Lorg/apache/poi/java/awt/event/TextListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent;->textListener:Lorg/apache/poi/java/awt/event/TextListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/TextListener;Lorg/apache/poi/java/awt/event/TextListener;)Lorg/apache/poi/java/awt/event/TextListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/TextComponent;->textListener:Lorg/apache/poi/java/awt/event/TextListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public areInputMethodsEnabled()Z
    .locals 4

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/TextComponent;->checkForEnableIM:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/TextComponent;->enableInputMethodsIfNecessary()V

    :cond_0
    iget-wide v0, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public enableInputMethods(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/TextComponent;->checkForEnableIM:Z

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->enableInputMethods(Z)V

    return-void
.end method

.method public eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 4

    iget v0, p1, Lorg/apache/poi/java/awt/AWTEvent;->id:I

    const/16 v1, 0x384

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/TextComponent;->textListener:Lorg/apache/poi/java/awt/event/TextListener;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;-><init>(Lorg/apache/poi/java/awt/TextComponent;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public getBackground()Lorg/apache/poi/java/awt/Color;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/TextComponent;->editable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/TextComponent;->backgroundSetByClientCode:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/java/awt/SystemColor;->control:Lorg/apache/poi/java/awt/SystemColor;

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->getBackground()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCaretPosition()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/TextComponentPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->getCaretPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionStart:I

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCharacterBounds(I)Lorg/apache/poi/java/awt/Rectangle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIndexAtPoint(Lorg/apache/poi/java/awt/Point;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getInputMethodRequests()Lorg/apache/poi/java/awt/im/InputMethodRequests;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/TextComponentPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->getInputMethodRequests()Lorg/apache/poi/java/awt/im/InputMethodRequests;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const-class v0, Lorg/apache/poi/java/awt/event/TextListener;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent;->textListener:Lorg/apache/poi/java/awt/event/TextListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getSelectedText()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextComponent;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextComponent;->getSelectionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSelectionEnd()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/TextComponentPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionEnd:I

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSelectionStart()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/TextComponentPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionStart:I

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionStart:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getText()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/TextComponentPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextListeners()[Lorg/apache/poi/java/awt/event/TextListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/TextListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/TextComponent;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/TextListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/TextListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEditable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/TextComponent;->editable:Z

    return v0
.end method

.method public paramString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/TextComponent;->editable:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",editable"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",selection="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextComponent;->getSelectionStart()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextComponent;->getSelectionEnd()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/event/TextEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/event/TextEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/TextComponent;->processTextEvent(Lorg/apache/poi/java/awt/event/TextEvent;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public processTextEvent(Lorg/apache/poi/java/awt/event/TextEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent;->textListener:Lorg/apache/poi/java/awt/event/TextListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/TextEvent;->getID()I

    move-result v1

    const/16 v2, 0x384

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/TextListener;->textValueChanged(Lorg/apache/poi/java/awt/event/TextEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeNotify()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/TextComponentPeer;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;

    invoke-interface {v1}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->getSelectionStart()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionStart:I

    invoke-interface {v1}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->getSelectionEnd()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionEnd:I

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->removeNotify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized removeTextListener(Lorg/apache/poi/java/awt/event/TextListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent;->textListener:Lorg/apache/poi/java/awt/event/TextListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/TextListener;Lorg/apache/poi/java/awt/event/TextListener;)Lorg/apache/poi/java/awt/event/TextListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/TextComponent;->textListener:Lorg/apache/poi/java/awt/event/TextListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized select(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_2
    if-ge p2, p1, :cond_3

    move p2, p1

    :cond_3
    iput p1, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionStart:I

    iput p2, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionEnd:I

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/TextComponentPeer;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->select(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized selectAll()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionStart:I

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionEnd:I

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/TextComponentPeer;

    if-eqz v1, :cond_0

    iget v2, p0, Lorg/apache/poi/java/awt/TextComponent;->selectionStart:I

    invoke-interface {v1, v2, v0}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->select(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBackground(Lorg/apache/poi/java/awt/Color;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/TextComponent;->backgroundSetByClientCode:Z

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->setBackground(Lorg/apache/poi/java/awt/Color;)V

    return-void
.end method

.method public declared-synchronized setCaretPosition(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/TextComponentPeer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->setCaretPosition(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p1}, Lorg/apache/poi/java/awt/TextComponent;->select(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "position less than zero."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEditable(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/TextComponent;->editable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/poi/java/awt/TextComponent;->editable:Z

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/TextComponentPeer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->setEditable(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSelectionEnd(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextComponent;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/java/awt/TextComponent;->select(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSelectionStart(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextComponent;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/TextComponent;->select(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setText(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, ""

    :goto_2
    iput-object p1, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/TextComponentPeer;

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/TextComponentPeer;->setText(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
